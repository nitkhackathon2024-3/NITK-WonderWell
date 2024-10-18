import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:wisdom_well/applications/trees/trees_bloc.dart';

@RoutePage()
class CreateTreePage extends StatefulWidget {
  final TreesBloc treesBloc;
  const CreateTreePage({super.key, required this.treesBloc});

  @override
  State<CreateTreePage> createState() => _CreateTreePageState();
}

class _CreateTreePageState extends State<CreateTreePage> {
  String? _treeFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Tree"),
        centerTitle: true,
      ),
      body: Form(
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
              ),
              if (_treeFile == null)
                TextButton(
                  onPressed: () {
                    FilePicker.platform.pickFiles().then((value) {
                      if (value != null) {
                        _treeFile = value.files.single.xFile.path;
                      }
                    });
                  },
                  child: Text("Choose file"),
                )
              else
                TextFormField(
                  decoration: InputDecoration(labelText: "Tree File"),
                  enabled: false,
                  initialValue: _treeFile,
                ),
              ElevatedButton(
                onPressed: () {
                  // widget.treesBloc.add(TreesEvent.createTree());
                  // AutoRouter.of(context).pop();
                },
                child: Text("Create"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
