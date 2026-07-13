// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Depart _$DepartFromJson(Map<String, dynamic> json) => _Depart(
  voyageId: (json['voyageId'] as num).toInt(),
  codevoyage: json['codevoyage'] as String?,
  datedepartprevue: json['datedepartprevue'] == null
      ? null
      : DateTime.parse(json['datedepartprevue'] as String),
  datearriveeprevue: json['datearriveeprevue'] == null
      ? null
      : DateTime.parse(json['datearriveeprevue'] as String),
  placesDisponibles: (json['placesDisponibles'] as num?)?.toInt() ?? 0,
  montant: (json['montant'] as num?)?.toInt(),
);

Map<String, dynamic> _$DepartToJson(_Depart instance) => <String, dynamic>{
  'voyageId': instance.voyageId,
  'codevoyage': instance.codevoyage,
  'datedepartprevue': instance.datedepartprevue?.toIso8601String(),
  'datearriveeprevue': instance.datearriveeprevue?.toIso8601String(),
  'placesDisponibles': instance.placesDisponibles,
  'montant': instance.montant,
};
