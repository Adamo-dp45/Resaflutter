// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reservation _$ReservationFromJson(Map<String, dynamic> json) => _Reservation(
  code: json['code'] as String,
  statut: json['statut'] as String,
  etatpaiement: json['etatpaiement'] as String,
  nomclient: json['nomclient'] as String?,
  contactclient: json['contactclient'] as String?,
  montant: (json['montant'] as num?)?.toInt(),
  dateexpiration: json['dateexpiration'] == null
      ? null
      : DateTime.parse(json['dateexpiration'] as String),
  montee: json['montee'] as String?,
  descente: json['descente'] as String?,
  codevoyage: json['codevoyage'] as String?,
  heurepassage: json['heurepassage'] == null
      ? null
      : DateTime.parse(json['heurepassage'] as String),
  datedepartprevue: json['datedepartprevue'] == null
      ? null
      : DateTime.parse(json['datedepartprevue'] as String),
  bonDisponible: json['bonDisponible'] as bool? ?? false,
  billetEmis: json['billetEmis'] as String?,
  voyageDemarre: json['voyageDemarre'] as bool? ?? false,
  positionActuelle: json['positionActuelle'] as String?,
  retardMinutes: (json['retardMinutes'] as num?)?.toInt(),
  heurepassageEstimee: json['heurepassageEstimee'] == null
      ? null
      : DateTime.parse(json['heurepassageEstimee'] as String),
  paiement: json['paiement'] == null
      ? null
      : PaiementInfo.fromJson(json['paiement'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReservationToJson(_Reservation instance) =>
    <String, dynamic>{
      'code': instance.code,
      'statut': instance.statut,
      'etatpaiement': instance.etatpaiement,
      'nomclient': instance.nomclient,
      'contactclient': instance.contactclient,
      'montant': instance.montant,
      'dateexpiration': instance.dateexpiration?.toIso8601String(),
      'montee': instance.montee,
      'descente': instance.descente,
      'codevoyage': instance.codevoyage,
      'heurepassage': instance.heurepassage?.toIso8601String(),
      'datedepartprevue': instance.datedepartprevue?.toIso8601String(),
      'bonDisponible': instance.bonDisponible,
      'billetEmis': instance.billetEmis,
      'voyageDemarre': instance.voyageDemarre,
      'positionActuelle': instance.positionActuelle,
      'retardMinutes': instance.retardMinutes,
      'heurepassageEstimee': instance.heurepassageEstimee?.toIso8601String(),
      'paiement': instance.paiement,
    };
