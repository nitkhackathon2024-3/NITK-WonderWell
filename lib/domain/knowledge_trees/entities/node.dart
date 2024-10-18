class Node {
  final String id;
  final String label;
  final List<String> subtopics;
  final List<String> keyPoints;
  final String summary;
  final List<Node> children;

  Node({
    required this.id,
    required this.label,
    required this.subtopics,
    required this.keyPoints,
    required this.summary,
    required this.children,
  });

  factory Node.fromJson(Map<String, dynamic> json) {
    return Node(
      id: json['id'],
      label: json['label'],
      subtopics: List<String>.from(json['subtopics']),
      keyPoints: List<String>.from(json['key_points']),
      summary: json['summary'],
      children: List<Node>.from(
        json['children'].map((node) => Node.fromJson(node)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'subtopics': subtopics,
      'key_points': keyPoints,
      'summary': summary,
      'children': children.map((node) => node.toJson()).toList(),
    };
  }
}
