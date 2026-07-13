// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Gare _$GareFromJson(Map<String, dynamic> json) => _Gare(
  id: (json['id'] as num).toInt(),
  libelle: json['libelle'] as String,
  ville: json['ville'] as String?,
);

Map<String, dynamic> _$GareToJson(_Gare instance) => <String, dynamic>{
  'id': instance.id,
  'libelle': instance.libelle,
  'ville': instance.ville,
};
