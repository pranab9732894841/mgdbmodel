import 'dart:convert';

class Patient {
  int? sno;
  String patientName;
  String? patientId;
  String patientPhone;
  String? patientEmail;
  String? patientAddress;
  String patientGender;
  String? patientDob;
  String? patientAge;
  String? patientBloodGroup;
  String? patientAllergy;
  String? patientHistory;
  String? patientWeight;
  String? patientHeight;
  String? patientBmi;
  String? patientBp;
  String? patientPulse;
  String? patientImage;
  Patient({
    this.sno,
    required this.patientName,
    this.patientId,
    required this.patientPhone,
    this.patientEmail,
    this.patientAddress,
    required this.patientGender,
    this.patientDob,
    this.patientAge,
    this.patientBloodGroup,
    this.patientAllergy,
    this.patientHistory,
    this.patientWeight,
    this.patientHeight,
    this.patientBmi,
    this.patientBp,
    this.patientPulse,
    this.patientImage,
  });

  Patient copyWith({
    int? sno,
    String? patientName,
    String? patientId,
    String? patientPhone,
    String? patientEmail,
    String? patientAddress,
    String? patientGender,
    String? patientDob,
    String? patientAge,
    String? patientBloodGroup,
    String? patientAllergy,
    String? patientHistory,
    String? patientWeight,
    String? patientHeight,
    String? patientBmi,
    String? patientBp,
    String? patientPulse,
    String? patientImage,
  }) {
    return Patient(
      sno: sno ?? this.sno,
      patientName: patientName ?? this.patientName,
      patientId: patientId ?? this.patientId,
      patientPhone: patientPhone ?? this.patientPhone,
      patientEmail: patientEmail ?? this.patientEmail,
      patientAddress: patientAddress ?? this.patientAddress,
      patientGender: patientGender ?? this.patientGender,
      patientDob: patientDob ?? this.patientDob,
      patientAge: patientAge ?? this.patientAge,
      patientBloodGroup: patientBloodGroup ?? this.patientBloodGroup,
      patientAllergy: patientAllergy ?? this.patientAllergy,
      patientHistory: patientHistory ?? this.patientHistory,
      patientWeight: patientWeight ?? this.patientWeight,
      patientHeight: patientHeight ?? this.patientHeight,
      patientBmi: patientBmi ?? this.patientBmi,
      patientBp: patientBp ?? this.patientBp,
      patientPulse: patientPulse ?? this.patientPulse,
      patientImage: patientImage ?? this.patientImage,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (sno != null) {
      result.addAll({'sno': sno});
    }
    result.addAll({'patientName': patientName});
    if (patientId != null) {
      result.addAll({'patientId': patientId});
    }
    result.addAll({'patientPhone': patientPhone});
    if (patientEmail != null) {
      result.addAll({'patientEmail': patientEmail});
    }
    if (patientAddress != null) {
      result.addAll({'patientAddress': patientAddress});
    }
    result.addAll({'patientGender': patientGender});
    if (patientDob != null) {
      result.addAll({'patientDob': patientDob});
    }
    if (patientAge != null) {
      result.addAll({'patientAge': patientAge});
    }
    if (patientBloodGroup != null) {
      result.addAll({'patientBloodGroup': patientBloodGroup});
    }
    if (patientAllergy != null) {
      result.addAll({'patientAllergy': patientAllergy});
    }
    if (patientHistory != null) {
      result.addAll({'patientHistory': patientHistory});
    }
    if (patientWeight != null) {
      result.addAll({'patientWeight': patientWeight});
    }
    if (patientHeight != null) {
      result.addAll({'patientHeight': patientHeight});
    }
    if (patientBmi != null) {
      result.addAll({'patientBmi': patientBmi});
    }
    if (patientBp != null) {
      result.addAll({'patientBp': patientBp});
    }
    if (patientPulse != null) {
      result.addAll({'patientPulse': patientPulse});
    }
    if (patientImage != null) {
      result.addAll({'patientImage': patientImage});
    }

    return result;
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      sno: map['sno']?.toInt(),
      patientName: map['patientName'] ?? '',
      patientId: map['patientId'],
      patientPhone: map['patientPhone'] ?? '',
      patientEmail: map['patientEmail'],
      patientAddress: map['patientAddress'],
      patientGender: map['patientGender'] ?? '',
      patientDob: map['patientDob'],
      patientAge: map['patientAge'],
      patientBloodGroup: map['patientBloodGroup'],
      patientAllergy: map['patientAllergy'],
      patientHistory: map['patientHistory'],
      patientWeight: map['patientWeight'],
      patientHeight: map['patientHeight'],
      patientBmi: map['patientBmi'],
      patientBp: map['patientBp'],
      patientPulse: map['patientPulse'],
      patientImage: map['patientImage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Patient.fromJson(String source) =>
      Patient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Patient(sno: $sno, patientName: $patientName, patientId: $patientId, patientPhone: $patientPhone, patientEmail: $patientEmail, patientAddress: $patientAddress, patientGender: $patientGender, patientDob: $patientDob, patientAge: $patientAge, patientBloodGroup: $patientBloodGroup, patientAllergy: $patientAllergy, patientHistory: $patientHistory, patientWeight: $patientWeight, patientHeight: $patientHeight, patientBmi: $patientBmi, patientBp: $patientBp, patientPulse: $patientPulse, patientImage: $patientImage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Patient &&
        other.sno == sno &&
        other.patientName == patientName &&
        other.patientId == patientId &&
        other.patientPhone == patientPhone &&
        other.patientEmail == patientEmail &&
        other.patientAddress == patientAddress &&
        other.patientGender == patientGender &&
        other.patientDob == patientDob &&
        other.patientAge == patientAge &&
        other.patientBloodGroup == patientBloodGroup &&
        other.patientAllergy == patientAllergy &&
        other.patientHistory == patientHistory &&
        other.patientWeight == patientWeight &&
        other.patientHeight == patientHeight &&
        other.patientBmi == patientBmi &&
        other.patientBp == patientBp &&
        other.patientPulse == patientPulse &&
        other.patientImage == patientImage;
  }

  @override
  int get hashCode {
    return sno.hashCode ^
        patientName.hashCode ^
        patientId.hashCode ^
        patientPhone.hashCode ^
        patientEmail.hashCode ^
        patientAddress.hashCode ^
        patientGender.hashCode ^
        patientDob.hashCode ^
        patientAge.hashCode ^
        patientBloodGroup.hashCode ^
        patientAllergy.hashCode ^
        patientHistory.hashCode ^
        patientWeight.hashCode ^
        patientHeight.hashCode ^
        patientBmi.hashCode ^
        patientBp.hashCode ^
        patientPulse.hashCode ^
        patientImage.hashCode;
  }
}
