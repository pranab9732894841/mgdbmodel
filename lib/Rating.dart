import 'dart:convert';

class Rating {
  double value;
  String comment;
  String createdAt;
  String updatedAt;
  Rating({
    required this.value,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  Rating copyWith({
    double? value,
    String? comment,
    String? createdAt,
    String? updatedAt,
  }) {
    return Rating(
      value: value ?? this.value,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'value': value});
    result.addAll({'comment': comment});
    result.addAll({'createdAt': createdAt});
    result.addAll({'updatedAt': updatedAt});

    return result;
  }

  factory Rating.fromMap(Map<String, dynamic> map) {
    return Rating(
      value: map['value']?.toDouble() ?? 0.0,
      comment: map['comment'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Rating.fromJson(String source) => Rating.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Rating(value: $value, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Rating &&
        other.value == value &&
        other.comment == comment &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return value.hashCode ^
        comment.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
