import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Qualification {
  String name;
  Qualification({
    required this.name,
  });

  Qualification copyWith({
    String? name,
  }) {
    return Qualification(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});

    return result;
  }

  factory Qualification.fromMap(Map<String, dynamic> map) {
    return Qualification(
      name: map['name'] ?? '',
    );
  }
  factory Qualification.fromSnapshot(QueryDocumentSnapshot map) {
    return Qualification(
      name: map['name'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory Qualification.fromJson(String source) =>
      Qualification.fromMap(json.decode(source));

  @override
  String toString() => 'Qualification(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Qualification && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
