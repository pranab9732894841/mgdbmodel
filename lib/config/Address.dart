import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Address {
  String street;
  String city;
  String? state;
  String? country;
  String? zip;
  Geo location;
  Address({
    required this.street,
    required this.city,
    this.state,
    this.country,
    this.zip,
    required this.location,
  });

  Address copyWith({
    String? street,
    String? city,
    String? state,
    String? country,
    String? zip,
    Geo? location,
  }) {
    return Address(
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      zip: zip ?? this.zip,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'street': street});
    result.addAll({'city': city});
    if (state != null) {
      result.addAll({'state': state});
    }
    if (country != null) {
      result.addAll({'country': country});
    }
    if (zip != null) {
      result.addAll({'zip': zip});
    }
    result.addAll({'location': location.toMap()});

    return result;
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['street'] ?? '',
      city: map['city'] ?? '',
      state: map['state'],
      country: map['country'],
      zip: map['zip'],
      location: Geo.fromMap(map['location']),
    );
  }
  factory Address.fromSnapshot(DocumentSnapshot map) {
    return Address(
      street: map['street'] ?? '',
      city: map['city'] ?? '',
      state: map['state'],
      country: map['country'],
      zip: map['zip'],
      location: Geo.fromMap(map['location']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, country: $country, zip: $zip, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Address &&
        other.street == street &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.zip == zip &&
        other.location == location;
  }

  @override
  int get hashCode {
    return street.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode ^
        zip.hashCode ^
        location.hashCode;
  }
}

class Geo {
  double lat;
  double lng;
  Geo({
    required this.lat,
    required this.lng,
  });

  Geo copyWith({
    double? lat,
    double? lng,
  }) {
    return Geo(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'lat': lat});
    result.addAll({'lng': lng});

    return result;
  }

  factory Geo.fromMap(Map<String, dynamic> map) {
    return Geo(
      lat: map['lat']?.toDouble() ?? 0.0,
      lng: map['lng']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Geo.fromJson(String source) => Geo.fromMap(json.decode(source));

  @override
  String toString() => 'Geo(lat: $lat, lng: $lng)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Geo && other.lat == lat && other.lng == lng;
  }

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}
