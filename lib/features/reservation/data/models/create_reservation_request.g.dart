// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateReservationRequest _$CreateReservationRequestFromJson(
  Map<String, dynamic> json,
) => _CreateReservationRequest(
  nom: json['nom'] as String,
  contact: json['contact'] as String,
  voyage: (json['voyage'] as num).toInt(),
  montee: (json['montee'] as num).toInt(),
  descente: (json['descente'] as num?)?.toInt(),
  returnUrl: json['returnUrl'] as String?,
);

Map<String, dynamic> _$CreateReservationRequestToJson(
  _CreateReservationRequest instance,
) => <String, dynamic>{
  'nom': instance.nom,
  'contact': instance.contact,
  'voyage': instance.voyage,
  'montee': instance.montee,
  'descente': instance.descente,
  'returnUrl': instance.returnUrl,
};
