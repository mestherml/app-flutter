import 'dart:convert';

class Technical {
  Technical({
    required this.tokenDeAcceso,
    required this.tipoDeToken,
    required this.tecnico,
  });

  String tokenDeAcceso;
  String tipoDeToken;
  Tecnico tecnico;

  factory Technical.fromJson(String str) => Technical.fromMap(json.decode(str));

  factory Technical.fromMap(Map<String, dynamic> json) => Technical(
        tokenDeAcceso: json["tokenDeAcceso"],
        tipoDeToken: json["tipoDeToken"],
        tecnico: Tecnico.fromMap(json["tecnico"]),
      );
}

class Tecnico {
  Tecnico({
    required this.technicalId,
    required this.technicalName,
    this.phone,
    this.mail,
    this.creationDate,
    this.lastUpdate,
    this.statusId,
    this.relTechnicalMunicipalityList,
    this.relTechnicalProfileList,
    this.relTechnicalBusinessList,
  });

  int technicalId;
  String technicalName;
  int? phone;
  String? mail;
  dynamic? creationDate;
  dynamic? lastUpdate;
  int? statusId;
  List<RelTechnicalMunicipalityList>? relTechnicalMunicipalityList;
  List<RelTechnicalProfileList>? relTechnicalProfileList;
  List<RelTechnicalBusinessList>? relTechnicalBusinessList;

  factory Tecnico.fromJson(String str) => Tecnico.fromMap(json.decode(str));

  factory Tecnico.fromMap(Map<String, dynamic> json) => Tecnico(
        technicalId: json["technicalId"],
        technicalName: json["technicalName"],
        phone: json["phone"],
        mail: json["mail"],
        creationDate: json["creationDate"],
        lastUpdate: json["lastUpdate"],
        statusId: json["statusId"],
        relTechnicalMunicipalityList: List<RelTechnicalMunicipalityList>.from(
            json["relTechnicalMunicipalityList"]
                .map((x) => RelTechnicalMunicipalityList.fromMap(x))),
        relTechnicalProfileList: List<RelTechnicalProfileList>.from(
            json["relTechnicalProfileList"]
                .map((x) => RelTechnicalProfileList.fromMap(x))),
        relTechnicalBusinessList: List<RelTechnicalBusinessList>.from(
            json["relTechnicalBusinessList"]
                .map((x) => RelTechnicalBusinessList.fromMap(x))),
      );
}

class RelTechnicalBusinessList {
  RelTechnicalBusinessList({
    this.businessJurisdictionId,
    this.businessJurisdictionName,
    this.creationDate,
    this.lastUpdate,
  });

  int? businessJurisdictionId;
  String? businessJurisdictionName;
  DateTime? creationDate;
  DateTime? lastUpdate;

  factory RelTechnicalBusinessList.fromJson(String str) =>
      RelTechnicalBusinessList.fromMap(json.decode(str));

  factory RelTechnicalBusinessList.fromMap(Map<String, dynamic> json) =>
      RelTechnicalBusinessList(
        businessJurisdictionId: json["businessJurisdictionId"],
        businessJurisdictionName: json["businessJurisdictionName"],
        creationDate: DateTime.parse(json["creationDate"]),
        lastUpdate: DateTime.parse(json["lastUpdate"]),
      );
}

class RelTechnicalMunicipalityList {
  RelTechnicalMunicipalityList({
    this.municipalityId,
    this.municipalityName,
    this.creationDate,
    this.lastUpdate,
  });

  int? municipalityId;
  String? municipalityName;
  DateTime? creationDate;
  DateTime? lastUpdate;

  factory RelTechnicalMunicipalityList.fromJson(String str) =>
      RelTechnicalMunicipalityList.fromMap(json.decode(str));

  factory RelTechnicalMunicipalityList.fromMap(Map<String, dynamic> json) =>
      RelTechnicalMunicipalityList(
        municipalityId: json["municipalityId"],
        municipalityName: json["municipalityName"],
        creationDate: DateTime.parse(json["creationDate"]),
        lastUpdate: DateTime.parse(json["lastUpdate"]),
      );
}

class RelTechnicalProfileList {
  RelTechnicalProfileList({
    this.profileId,
    this.profileName,
    this.statusId,
    this.creationDate,
    this.lastUpdate,
  });

  int? profileId;
  String? profileName;
  int? statusId;
  DateTime? creationDate;
  dynamic? lastUpdate;

  factory RelTechnicalProfileList.fromJson(String str) =>
      RelTechnicalProfileList.fromMap(json.decode(str));

  factory RelTechnicalProfileList.fromMap(Map<String, dynamic> json) =>
      RelTechnicalProfileList(
        profileId: json["profileId"],
        profileName: json["profileName"],
        statusId: json["statusId"],
        creationDate: DateTime.parse(json["creationDate"]),
        lastUpdate: json["lastUpdate"],
      );
}
