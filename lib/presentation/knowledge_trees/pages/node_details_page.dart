import 'package:flutter/material.dart';

class NodeDetailsPage extends StatelessWidget {
  final String label;
  final List<String> keyPoints;
  final String summary;
  final List<String> subtopics;

  const NodeDetailsPage({
    super.key,
    required this.label,
    required this.keyPoints,
    required this.summary,
    required this.subtopics,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),  // Display the node label in the app bar
        centerTitle: true,
      ),
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Key Points",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...keyPoints.map((point) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text("• $point"),
                  )),
              SizedBox(height: 16),
              Text(
                "Summary",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(summary),
              ),
              SizedBox(height: 16),
              Text(
                "Subtopics",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...subtopics.map((subtopic) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text("• $subtopic"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
