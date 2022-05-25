import 'dart:convert';

class RewViewModel {
  double value;
  String? comment;
  String? createdAt;
  String? updatedAt;
  String? userId;
  RewViewModel({
    required this.value,
    this.comment,
    this.createdAt,
    this.updatedAt,
    this.userId,
  });

  RewViewModel copyWith({
    double? value,
    String? comment,
    String? createdAt,
    String? updatedAt,
    String? userId,
  }) {
    return RewViewModel(
      value: value ?? this.value,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'value': value});
    if (comment != null) {
      result.addAll({'comment': comment});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }
    if (userId != null) {
      result.addAll({'userId': userId});
    }

    return result;
  }

  factory RewViewModel.fromMap(Map<String, dynamic> map) {
    return RewViewModel(
      value: map['value']?.toDouble() ?? 0.0,
      comment: map['comment'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      userId: map['userId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RewViewModel.fromJson(String source) =>
      RewViewModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RewViewModel(value: $value, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RewViewModel &&
        other.value == value &&
        other.comment == comment &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return value.hashCode ^
        comment.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        userId.hashCode;
  }
}
