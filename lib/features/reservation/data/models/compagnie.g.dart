// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compagnie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Compagnie _$CompagnieFromJson(Map<String, dynamic> json) => _Compagnie(
  slug: json['slug'] as String,
  libelle: json['libelle'] as String?,
  sigle: json['sigle'] as String?,
  contact: json['contact'] as String?,
  siteweb: json['siteweb'] as String?,
);

Map<String, dynamic> _$CompagnieToJson(_Compagnie instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'libelle': instance.libelle,
      'sigle': instance.sigle,
      'contact': instance.contact,
      'siteweb': instance.siteweb,
    };
