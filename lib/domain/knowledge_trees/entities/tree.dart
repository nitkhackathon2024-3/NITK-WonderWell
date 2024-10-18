import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart';

class Tree {
  final String name;
  final String id;

  Tree({
    required this.name,
    required this.id,
  });

  factory Tree.fromJson(Map<String, dynamic> json) {
    return Tree(
      name: json['name'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
    };
  }
}

class TreeDetails {
  final String id;
  final String name;
  final Node root;

  TreeDetails({
    required this.id,
    required this.name,
    required this.root,
  });

  factory TreeDetails.fromJson(Map<String, dynamic> json) {
    return TreeDetails(
      id: json['id'],
      name: json['name'],
      root: Node.fromJson(json['root']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'root': root.toJson(),
    };
  }
}
