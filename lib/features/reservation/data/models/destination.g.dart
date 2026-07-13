// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Destination _$DestinationFromJson(Map<String, dynamic> json) => _Destination(
  gare: Gare.fromJson(json['gare'] as Map<String, dynamic>),
  montant: (json['montant'] as num).toInt(),
);

Map<String, dynamic> _$DestinationToJson(_Destination instance) =>
    <String, dynamic>{'gare': instance.gare, 'montant': instance.montant};
