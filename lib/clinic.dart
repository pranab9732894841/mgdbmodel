import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'config/Address.dart';

class Clinic {
  String name;
  String uuid;
  CompanyDetails? companyDetails;
  Address? address;
  String? phone;
  String email;
  String? password;
  String? image;
  String? createdAt;
  String? updatedAt;
  String? website;
  bool? closedBookingOnAppointmentDate;
  bool isActive;
  Clinic({
    required this.name,
    required this.uuid,
    this.companyDetails,
    this.address,
    this.phone,
    required this.email,
    this.password,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.website,
    this.closedBookingOnAppointmentDate,
    required this.isActive,
  });

  Clinic copyWith({
    String? name,
    String? uuid,
    CompanyDetails? companyDetails,
    Address? address,
    String? phone,
    String? email,
    String? password,
    String? image,
    String? createdAt,
    String? updatedAt,
    String? website,
    bool? closedBookingOnAppointmentDate,
    bool? isActive,
  }) {
    return Clinic(
      name: name ?? this.name,
      uuid: uuid ?? this.uuid,
      companyDetails: companyDetails ?? this.companyDetails,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      website: website ?? this.website,
      closedBookingOnAppointmentDate:
          closedBookingOnAppointmentDate ?? this.closedBookingOnAppointmentDate,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'uuid': uuid});
    if (companyDetails != null) {
      result.addAll({'companyDetails': companyDetails!.toMap()});
    }
    if (address != null) {
      result.addAll({'address': address!.toMap()});
    }
    if (phone != null) {
      result.addAll({'phone': phone});
    }
    result.addAll({'email': email});
    if (password != null) {
      result.addAll({'password': password});
    }
    if (image != null) {
      result.addAll({'image': image});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }
    if (website != null) {
      result.addAll({'website': website});
    }
    if (closedBookingOnAppointmentDate != null) {
      result.addAll(
          {'closedBookingOnAppointmentDate': closedBookingOnAppointmentDate});
    }
    result.addAll({'isActive': isActive});

    return result;
  }

  factory Clinic.fromMap(Map<String, dynamic> map) {
    return Clinic(
      name: map['name'] ?? '',
      uuid: map['uuid'] ?? '',
      companyDetails: map['companyDetails'] != null
          ? CompanyDetails.fromMap(map['companyDetails'])
          : null,
      address: map['address'] != null ? Address.fromMap(map['address']) : null,
      phone: map['phone'],
      email: map['email'] ?? '',
      password: map['password'],
      image: map['image'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      website: map['website'],
      closedBookingOnAppointmentDate: map['closedBookingOnAppointmentDate'],
      isActive: map['isActive'] ?? false,
    );
  }
  factory Clinic.fromSnapshot(DocumentSnapshot doc) {
    return Clinic(
      name: doc.data().toString().contains('name') ? doc.get('name') : '',
      uuid: doc.data().toString().contains('uuid') ? doc.get('uuid') : '',
      companyDetails: doc.data().toString().contains('companyDetails')
          ? CompanyDetails.fromMap(doc.get('companyDetails'))
          : null,
      address: doc.data().toString().contains('address')
          ? Address.fromMap(doc.get('address'))
          : null,
      phone: doc.data().toString().contains('phone') ? doc.get('phone') : '',
      email: doc.data().toString().contains('email') ? doc.get('email') : '',
      password:
          doc.data().toString().contains('password') ? doc.get('password') : '',
      image: doc.data().toString().contains('image') ? doc.get('image') : '',
      createdAt: doc.data().toString().contains('createdAt')
          ? doc.get('createdAt')
          : '',
      updatedAt: doc.data().toString().contains('updatedAt')
          ? doc.get('updatedAt')
          : '',
      website:
          doc.data().toString().contains('website') ? doc.get('website') : '',
      closedBookingOnAppointmentDate:
          doc.data().toString().contains('closedBookingOnAppointmentDate')
              ? doc.get('closedBookingOnAppointmentDate')
              : false,
      isActive: doc.data().toString().contains('isActive')
          ? doc.get('isActive')
          : false,
    );
  }
  String toJson() => json.encode(toMap());

  factory Clinic.fromJson(String source) => Clinic.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Clinic(name: $name, uuid: $uuid, companyDetails: $companyDetails, address: $address, phone: $phone, email: $email, password: $password, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, website: $website, closedBookingOnAppointmentDate: $closedBookingOnAppointmentDate, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Clinic &&
        other.name == name &&
        other.uuid == uuid &&
        other.companyDetails == companyDetails &&
        other.address == address &&
        other.phone == phone &&
        other.email == email &&
        other.password == password &&
        other.image == image &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.website == website &&
        other.closedBookingOnAppointmentDate ==
            closedBookingOnAppointmentDate &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        uuid.hashCode ^
        companyDetails.hashCode ^
        address.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        password.hashCode ^
        image.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        website.hashCode ^
        closedBookingOnAppointmentDate.hashCode ^
        isActive.hashCode;
  }
}

class CompanyDetails {
  String? name;
  String? website;
  String? gstNumber;
  String? panNumber;
  CompanyDetails({
    this.name,
    this.website,
    this.gstNumber,
    this.panNumber,
  });

  CompanyDetails copyWith({
    String? name,
    String? website,
    String? gstNumber,
    String? panNumber,
  }) {
    return CompanyDetails(
      name: name ?? this.name,
      website: website ?? this.website,
      gstNumber: gstNumber ?? this.gstNumber,
      panNumber: panNumber ?? this.panNumber,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (name != null) {
      result.addAll({'name': name});
    }
    if (website != null) {
      result.addAll({'website': website});
    }
    if (gstNumber != null) {
      result.addAll({'gstNumber': gstNumber});
    }
    if (panNumber != null) {
      result.addAll({'panNumber': panNumber});
    }

    return result;
  }

  factory CompanyDetails.fromMap(Map<String, dynamic> map) {
    return CompanyDetails(
      name: map['name'],
      website: map['website'],
      gstNumber: map['gstNumber'],
      panNumber: map['panNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyDetails.fromJson(String source) =>
      CompanyDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CompanyDetails(name: $name, website: $website, gstNumber: $gstNumber, panNumber: $panNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CompanyDetails &&
        other.name == name &&
        other.website == website &&
        other.gstNumber == gstNumber &&
        other.panNumber == panNumber;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        website.hashCode ^
        gstNumber.hashCode ^
        panNumber.hashCode;
  }
}
