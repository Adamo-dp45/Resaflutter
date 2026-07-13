// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paiement_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaiementInfo _$PaiementInfoFromJson(Map<String, dynamic> json) =>
    _PaiementInfo(
      reference: json['reference'] as String,
      url: json['url'] as String?,
      estSimule: json['estSimule'] as bool? ?? false,
    );

Map<String, dynamic> _$PaiementInfoToJson(_PaiementInfo instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'url': instance.url,
      'estSimule': instance.estSimule,
    };
