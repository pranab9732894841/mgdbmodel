import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mgdbmodel/Rating.dart';

class Test {
  Rating? rating;
  List<String>? clinicIds;
  Test({
    this.rating,
    this.clinicIds,
  });

  Test copyWith({
    Rating? rating,
    List<String>? clinicIds,
  }) {
    return Test(
      rating: rating ?? this.rating,
      clinicIds: clinicIds ?? this.clinicIds,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (rating != null) {
      result.addAll({'rating': rating!.toMap()});
    }
    if (clinicIds != null) {
      result.addAll({'clinicIds': clinicIds});
    }

    return result;
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      rating: map['rating'] != null ? Rating.fromMap(map['rating']) : null,
      clinicIds: List<String>.from(map['clinicIds']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) => Test.fromMap(json.decode(source));

  @override
  String toString() => 'Test(rating: $rating, clinicIds: $clinicIds)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Test &&
        other.rating == rating &&
        listEquals(other.clinicIds, clinicIds);
  }

  @override
  int get hashCode => rating.hashCode ^ clinicIds.hashCode;
}
