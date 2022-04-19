import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  String? id;
  String? name;
  String? description;
  String? imageUrl;
  Category({
    this.id,
    required this.name,
    this.description,
    this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'name': name});
    if (description != null) {
      result.addAll({'description': description});
    }
    if (imageUrl != null) {
      result.addAll({'imageUrl': imageUrl});
    }

    return result;
  }

  factory Category.fromSnapShot(DocumentSnapshot map) {
    return Category(
      id: map.id,
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
    );
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}
