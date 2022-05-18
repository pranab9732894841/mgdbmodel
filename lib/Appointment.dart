import 'dart:convert';

class Appointment {
  int sno;
  String userId;
  String doctorId;
  String clinicId;
  String? scheduleId;
  String createDate;
  int epoch;
  String status;
  String? bookingDate;
  int? lastActiveEpoch;
  String? reason;
  String? note;
  String? location;
  String? patientName;
  String? patientId;
  Appointment({
    required this.sno,
    required this.userId,
    required this.doctorId,
    required this.clinicId,
    this.scheduleId,
    required this.createDate,
    required this.epoch,
    required this.status,
    this.bookingDate,
    this.lastActiveEpoch,
    this.reason,
    this.note,
    this.location,
    this.patientName,
    this.patientId,
  });

  Appointment copyWith({
    int? sno,
    String? userId,
    String? doctorId,
    String? clinicId,
    String? scheduleId,
    String? createDate,
    int? epoch,
    String? status,
    String? bookingDate,
    int? lastActiveEpoch,
    String? reason,
    String? note,
    String? location,
    String? patientName,
    String? patientId,
  }) {
    return Appointment(
      sno: sno ?? this.sno,
      userId: userId ?? this.userId,
      doctorId: doctorId ?? this.doctorId,
      clinicId: clinicId ?? this.clinicId,
      scheduleId: scheduleId ?? this.scheduleId,
      createDate: createDate ?? this.createDate,
      epoch: epoch ?? this.epoch,
      status: status ?? this.status,
      bookingDate: bookingDate ?? this.bookingDate,
      lastActiveEpoch: lastActiveEpoch ?? this.lastActiveEpoch,
      reason: reason ?? this.reason,
      note: note ?? this.note,
      location: location ?? this.location,
      patientName: patientName ?? this.patientName,
      patientId: patientId ?? this.patientId,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'sno': sno});
    result.addAll({'userId': userId});
    result.addAll({'doctorId': doctorId});
    result.addAll({'clinicId': clinicId});
    if (scheduleId != null) {
      result.addAll({'scheduleId': scheduleId});
    }
    result.addAll({'createDate': createDate});
    result.addAll({'epoch': epoch});
    result.addAll({'status': status});
    if (bookingDate != null) {
      result.addAll({'bookingDate': bookingDate});
    }
    if (lastActiveEpoch != null) {
      result.addAll({'lastActiveEpoch': lastActiveEpoch});
    }
    if (reason != null) {
      result.addAll({'reason': reason});
    }
    if (note != null) {
      result.addAll({'note': note});
    }
    if (location != null) {
      result.addAll({'location': location});
    }
    if (patientName != null) {
      result.addAll({'patientName': patientName});
    }
    if (patientId != null) {
      result.addAll({'patientId': patientId});
    }

    return result;
  }

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      sno: map['sno']?.toInt() ?? 0,
      userId: map['userId'] ?? '',
      doctorId: map['doctorId'] ?? '',
      clinicId: map['clinicId'] ?? '',
      scheduleId: map['scheduleId'],
      createDate: map['createDate'] ?? '',
      epoch: map['epoch']?.toInt() ?? 0,
      status: map['status'] ?? '',
      bookingDate: map['bookingDate'],
      lastActiveEpoch: map['lastActiveEpoch']?.toInt(),
      reason: map['reason'],
      note: map['note'],
      location: map['location'],
      patientName: map['patientName'],
      patientId: map['patientId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Appointment.fromJson(String source) =>
      Appointment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Appointment(sno: $sno, userId: $userId, doctorId: $doctorId, clinicId: $clinicId, scheduleId: $scheduleId, createDate: $createDate, epoch: $epoch, status: $status, bookingDate: $bookingDate, lastActiveEpoch: $lastActiveEpoch, reason: $reason, note: $note, location: $location, patientName: $patientName, patientId: $patientId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointment &&
        other.sno == sno &&
        other.userId == userId &&
        other.doctorId == doctorId &&
        other.clinicId == clinicId &&
        other.scheduleId == scheduleId &&
        other.createDate == createDate &&
        other.epoch == epoch &&
        other.status == status &&
        other.bookingDate == bookingDate &&
        other.lastActiveEpoch == lastActiveEpoch &&
        other.reason == reason &&
        other.note == note &&
        other.location == location &&
        other.patientName == patientName &&
        other.patientId == patientId;
  }

  @override
  int get hashCode {
    return sno.hashCode ^
        userId.hashCode ^
        doctorId.hashCode ^
        clinicId.hashCode ^
        scheduleId.hashCode ^
        createDate.hashCode ^
        epoch.hashCode ^
        status.hashCode ^
        bookingDate.hashCode ^
        lastActiveEpoch.hashCode ^
        reason.hashCode ^
        note.hashCode ^
        location.hashCode ^
        patientName.hashCode ^
        patientId.hashCode;
  }
}
