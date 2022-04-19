import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Specialization {
  String name;
  Specialization({
    required this.name,
  });

  Specialization copyWith({
    String? name,
  }) {
    return Specialization(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});

    return result;
  }

  factory Specialization.fromMap(Map<String, dynamic> map) {
    return Specialization(
      name: map['name'] ?? '',
    );
  }
  factory Specialization.fromSnapshot(QueryDocumentSnapshot map) {
    return Specialization(
      name: map['name'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory Specialization.fromJson(String source) =>
      Specialization.fromMap(json.decode(source));

  @override
  String toString() => 'Specialization(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Specialization && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
