import 'dart:convert';

import 'package:flutter/foundation.dart';

class DocSchedule {
  String uiid;
  String docId;
  String clinicId;
  bool isActive;
  bool isRepeat;
  String startDate;
  String endDate;
  String startTime;
  String endTime;
  double doctorFees;
  int patientCount;
  List<String> repeatWeekdays;
  DocSchedule({
    required this.uiid,
    required this.docId,
    required this.clinicId,
    required this.isActive,
    required this.isRepeat,
    required this.startDate,
    required this.endDate,
    required this.startTime,
    required this.endTime,
    required this.doctorFees,
    required this.patientCount,
    required this.repeatWeekdays,
  });

  DocSchedule copyWith({
    String? uiid,
    String? docId,
    String? clinicId,
    bool? isActive,
    bool? isRepeat,
    String? startDate,
    String? endDate,
    String? startTime,
    String? endTime,
    double? doctorFees,
    int? patientCount,
    List<String>? repeatWeekdays,
  }) {
    return DocSchedule(
      uiid: uiid ?? this.uiid,
      docId: docId ?? this.docId,
      clinicId: clinicId ?? this.clinicId,
      isActive: isActive ?? this.isActive,
      isRepeat: isRepeat ?? this.isRepeat,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      doctorFees: doctorFees ?? this.doctorFees,
      patientCount: patientCount ?? this.patientCount,
      repeatWeekdays: repeatWeekdays ?? this.repeatWeekdays,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'uiid': uiid});
    result.addAll({'docId': docId});
    result.addAll({'clinicId': clinicId});
    result.addAll({'isActive': isActive});
    result.addAll({'isRepeat': isRepeat});
    result.addAll({'startDate': startDate});
    result.addAll({'endDate': endDate});
    result.addAll({'startTime': startTime});
    result.addAll({'endTime': endTime});
    result.addAll({'doctorFees': doctorFees});
    result.addAll({'patientCount': patientCount});
    result.addAll({'repeatWeekdays': repeatWeekdays});

    return result;
  }

  factory DocSchedule.fromMap(Map<String, dynamic> map) {
    return DocSchedule(
      uiid: map['uiid'] ?? '',
      docId: map['docId'] ?? '',
      clinicId: map['clinicId'] ?? '',
      isActive: map['isActive'] ?? false,
      isRepeat: map['isRepeat'] ?? false,
      startDate: map['startDate'] ?? '',
      endDate: map['endDate'] ?? '',
      startTime: map['startTime'] ?? '',
      endTime: map['endTime'] ?? '',
      doctorFees: map['doctorFees']?.toDouble() ?? 0.0,
      patientCount: map['patientCount']?.toInt() ?? 0,
      repeatWeekdays: List<String>.from(map['repeatWeekdays']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DocSchedule.fromJson(String source) =>
      DocSchedule.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DocSchedule(uiid: $uiid, docId: $docId, clinicId: $clinicId, isActive: $isActive, isRepeat: $isRepeat, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, doctorFees: $doctorFees, patientCount: $patientCount, repeatWeekdays: $repeatWeekdays)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DocSchedule &&
        other.uiid == uiid &&
        other.docId == docId &&
        other.clinicId == clinicId &&
        other.isActive == isActive &&
        other.isRepeat == isRepeat &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.startTime == startTime &&
        other.endTime == endTime &&
        other.doctorFees == doctorFees &&
        other.patientCount == patientCount &&
        listEquals(other.repeatWeekdays, repeatWeekdays);
  }

  @override
  int get hashCode {
    return uiid.hashCode ^
        docId.hashCode ^
        clinicId.hashCode ^
        isActive.hashCode ^
        isRepeat.hashCode ^
        startDate.hashCode ^
        endDate.hashCode ^
        startTime.hashCode ^
        endTime.hashCode ^
        doctorFees.hashCode ^
        patientCount.hashCode ^
        repeatWeekdays.hashCode;
  }
}
