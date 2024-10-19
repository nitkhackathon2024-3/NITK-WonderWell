import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wisdom_well/applications/trees/trees_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

@RoutePage()
class CreateTreePage extends StatefulWidget {
  final TreesBloc treesBloc;
  const CreateTreePage({super.key, required this.treesBloc});

  @override
  State<CreateTreePage> createState() => _CreateTreePageState();
}

class _CreateTreePageState extends State<CreateTreePage> {
  final _formKey = GlobalKey<FormState>();
  String? _treeFile;
  String? _treeName;
  bool _isLoading = false; // Loading state
  String? _fileType; // Track the file type (PDF or Image)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Tree"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey, // Add a key for form validation
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Tree Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  _treeName = value; // Save the tree name
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a tree name'; // Validation for empty name
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16), // Add some space
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "File Type",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: [
                  DropdownMenuItem(value: 'pdf', child: Text("PDF")),
                  DropdownMenuItem(value: 'image', child: Text("Image")),
                ],
                onChanged: (value) {
                  setState(() {
                    _fileType = value;
                    _treeFile = null; // Reset file when file type changes
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select a file type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              if (_treeFile == null)
                TextButton(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform.pickFiles();
                    if (result != null && result.files.isNotEmpty) {
                      setState(() {
                        _treeFile = result.files.single.path;
                      });
                    }
                  },
                  child: Text("Choose file"),
                )
              else
                TextFormField(
                  decoration: InputDecoration(labelText: "Tree File"),
                  enabled: false,
                  initialValue: _treeFile,
                ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isLoading
                    ? null
                    : () async {
                        if (_formKey.currentState?.validate() ?? false) {
                          if (_treeFile != null && _treeName != null) {
                            setState(() {
                              _isLoading = true; // Show loading spinner
                            });

                            Map<String, dynamic>? treeJson;
                            if (_fileType == 'pdf') {
                              treeJson = await uploadPdfAndGetJson(_treeFile!);
                            } else if (_fileType == 'image') {
                              treeJson = await uploadImageAndGetJson(_treeFile!);
                            }

                            if (treeJson != null) {
                              final success = await storeTreeInFirebase(_treeName!, treeJson);

                              if (success) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Tree created successfully!")),
                                );
                                Navigator.pop(context); // Close the page after success
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Failed to create tree in Firebase")),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Failed to upload file or retrieve data")),
                              );
                            }

                            setState(() {
                              _isLoading = false; // Hide loading spinner
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Please select a file")),
                            );
                          }
                        }
                      },
                child: _isLoading
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text("Create"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to upload PDF to API and get JSON response
  Future<Map<String, dynamic>?> uploadPdfAndGetJson(String pdfFilePath) async {
    const url = "https://wisdomwell.onrender.com/upload/pdf";
    final treeJson = {
      "root": {
        "id": "root",
        "label": "",
        "subtopics": [],
        "key_points": [],
        "summary": "",
        "children": []
      }
    };

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));
      request.files.add(await http.MultipartFile.fromPath('file', pdfFilePath));
      request.fields['tree_json'] = jsonEncode(treeJson);

      final response = await request.send();

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        return jsonDecode(responseBody); // Convert response to JSON
      } else {
        print("Failed to upload PDF. Status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error uploading PDF: $e");
      return null;
    }
  }

  // Method to upload Image to API and get JSON response
  Future<Map<String, dynamic>?> uploadImageAndGetJson(String imageFilePath) async {
    const url = "https://wisdomwell.onrender.com/upload/image";
    // Similar to the PDF upload method but without the tree_json
    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));
      request.files.add(await http.MultipartFile.fromPath('file', imageFilePath));

      final response = await request.send();

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        return jsonDecode(responseBody); // Convert response to JSON
      } else {
        print("Failed to upload image. Status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
  }

  // Method to store the tree in Firebase under the current user's document
  Future<bool> storeTreeInFirebase(String treeName, Map<String, dynamic> treeJson) async {
    try {
      // Get the current user's ID
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        print("No user is signed in.");
        return false;
      }

      final userId = user.uid;

      // Reference to the user's document in Firestore
      final userDocRef = FirebaseFirestore.instance.collection('users').doc(userId);

      // Add the tree inside the 'tree' collection under the user's document
      final treeDocRef = await userDocRef.collection('tree').add({
        'name': treeName,
        'tree_json': treeJson,
      });

      // Optionally update the tree document with its own ID
      await treeDocRef.update({'id': treeDocRef.id});

      return true;
    } catch (e) {
      print("Error storing tree in Firebase: $e");
      return false;
    }
  }
}
