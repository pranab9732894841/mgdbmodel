import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'RewViewModel.dart';
import 'config/Qualification.dart';
import 'config/Specialization.dart';

class Doctor {
  String name;
  List<DocImage>? images;
  String? address;
  String? phone;
  String? email;
  List<Specialization>? specialization;
  List<Qualification>? qualification;
  String experience;
  String? description;
  String? createdAt;
  String? updatedAt;
  bool isActive;
  String? status;
  String? uuid;
  String? categoryId;
  String? registration;
  RewViewModel? reviews;
  List<String>? clinicIds;
  Doctor({
    required this.name,
    this.images,
    this.address,
    this.phone,
    this.email,
    this.specialization,
    this.qualification,
    required this.experience,
    this.description,
    this.createdAt,
    this.updatedAt,
    required this.isActive,
    this.status,
    this.uuid,
    this.categoryId,
    this.registration,
    this.reviews,
    this.clinicIds,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    if (images != null) {
      result.addAll({'images': images!.map((x) => x.toMap()).toList()});
    }
    if (address != null) {
      result.addAll({'address': address});
    }
    if (phone != null) {
      result.addAll({'phone': phone});
    }
    if (email != null) {
      result.addAll({'email': email});
    }
    if (specialization != null) {
      result.addAll(
          {'specialization': specialization!.map((x) => x.toMap()).toList()});
    }
    if (qualification != null) {
      result.addAll(
          {'qualification': qualification!.map((x) => x.toMap()).toList()});
    }
    result.addAll({'experience': experience});
    if (description != null) {
      result.addAll({'description': description});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }
    result.addAll({'isActive': isActive});
    if (status != null) {
      result.addAll({'status': status});
    }
    if (uuid != null) {
      result.addAll({'uuid': uuid});
    }
    if (categoryId != null) {
      result.addAll({'categoryId': categoryId});
    }
    if (registration != null) {
      result.addAll({'registration': registration});
    }
    if (reviews != null) {
      result.addAll({'reviews': reviews!.toMap()});
    }
    if (clinicIds != null) {
      result.addAll({'clinicIds': clinicIds});
    }
    return result;
  }

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'] ?? '',
      images: map['images'] != null
          ? List<DocImage>.from(map['images']?.map((x) => DocImage.fromMap(x)))
          : null,
      address: map['address'],
      phone: map['phone'],
      email: map['email'],
      specialization: map['specialization'] != null
          ? List<Specialization>.from(
              map['specialization']?.map((x) => Specialization.fromMap(x)))
          : null,
      qualification: map['qualification'] != null
          ? List<Qualification>.from(
              map['qualification']?.map((x) => Qualification.fromMap(x)))
          : null,
      experience: map['experience'] ?? '',
      description: map['description'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      isActive: map['isActive'] ?? false,
      status: map['status'],
      uuid: map['uuid'],
      categoryId: map['categoryId'],
      registration: map['registration'],
      reviews:
          map['reviews'] != null ? RewViewModel.fromMap(map['reviews']) : null,
      clinicIds: List<String>.from(map['clinicIds']),
    );
  }

  factory Doctor.fromSnapshot(DocumentSnapshot doc) {
    return Doctor(
      name: doc.data().toString().contains('name') ? doc.get('name') : '',
      images: doc.data().toString().contains('images')
          ? List<DocImage>.from(
              doc.get('images')?.map((x) => DocImage.fromMap(x)))
          : null,
      address:
          doc.data().toString().contains('address') ? doc.get('address') : null,
      phone: doc.data().toString().contains('phone') ? doc.get('phone') : null,
      email: doc.data().toString().contains('email') ? doc.get('email') : null,
      specialization: doc.data().toString().contains('specialization')
          ? List<Specialization>.from(
              doc.get('specialization')?.map((x) => Specialization.fromMap(x)))
          : null,
      qualification: doc.data().toString().contains('qualification')
          ? List<Qualification>.from(
              doc.get('qualification')?.map((x) => Qualification.fromMap(x)))
          : null,
      experience: doc.data().toString().contains('experience')
          ? doc.get('experience')
          : '',
      description: doc.data().toString().contains('description')
          ? doc.get('description')
          : '',
      createdAt: doc.data().toString().contains('createdAt')
          ? doc.get('createdAt')
          : null,
      updatedAt: doc.data().toString().contains('updatedAt')
          ? doc.get('updatedAt')
          : null,
      isActive: doc.data().toString().contains('isActive')
          ? doc.get('isActive')
          : false,
      status:
          doc.data().toString().contains('status') ? doc.get('status') : null,
      uuid: doc.data().toString().contains('uuid') ? doc.get('uuid') : null,
      categoryId: doc.data().toString().contains('categoryId')
          ? doc.get('categoryId')
          : null,
      registration: doc.data().toString().contains('registration')
          ? doc.get('registration')
          : null,
      reviews: doc.data().toString().contains('reviews')
          ? RewViewModel.fromMap(doc.get('reviews'))
          : null,
      clinicIds: doc.data().toString().contains('clinicIds')
          ? List<String>.from(doc.get('clinicIds'))
          : null,
    );
  }
  String toJson() => json.encode(toMap());

  factory Doctor.fromJson(String source) => Doctor.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Doctor(name: $name, images: $images, address: $address, phone: $phone, email: $email, specialization: $specialization, qualification: $qualification, experience: $experience, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, status: $status, uuid: $uuid, categoryId: $categoryId, registration: $registration)';
  }
}

class DocImage {
  String image;
  String type;
  DocImage({
    required this.image,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'image': image});
    result.addAll({'type': type});

    return result;
  }

  factory DocImage.fromMap(Map<String, dynamic> map) {
    return DocImage(
      image: map['image'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory DocImage.fromSnapshot(QueryDocumentSnapshot map) {
    return DocImage(
      image: map['image'] ?? '',
      type: map['type'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory DocImage.fromJson(String source) =>
      DocImage.fromMap(json.decode(source));

  @override
  String toString() => 'DocImage(image: $image, type: $type)';
}
