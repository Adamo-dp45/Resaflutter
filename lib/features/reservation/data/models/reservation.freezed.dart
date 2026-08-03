// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reservation {

 String get code; String get statut; String get etatpaiement; String? get nomclient; String? get contactclient; int? get montant; DateTime? get dateexpiration; String? get montee; String? get descente; String? get codevoyage;/// Heure de passage du car à la gare de montée du client (cf. [heureEmbarquement]).
 DateTime? get heurepassage; DateTime? get datedepartprevue; bool get bonDisponible; String? get billetEmis;/// Le car a-t-il quitté son origine (départ réel horodaté) ?
 bool get voyageDemarre;/// Gare où se trouve actuellement le car ; null tant qu'il n'est pas parti.
 String? get positionActuelle;/// Retard courant du car en minutes (positif = retard, négatif = avance) ; null si non mesuré.
 int? get retardMinutes;/// Heure de passage ESTIMÉE chez le client = heure prévue + retard courant.
 DateTime? get heurepassageEstimee; PaiementInfo? get paiement;
/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationCopyWith<Reservation> get copyWith => _$ReservationCopyWithImpl<Reservation>(this as Reservation, _$identity);

  /// Serializes this Reservation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reservation&&(identical(other.code, code) || other.code == code)&&(identical(other.statut, statut) || other.statut == statut)&&(identical(other.etatpaiement, etatpaiement) || other.etatpaiement == etatpaiement)&&(identical(other.nomclient, nomclient) || other.nomclient == nomclient)&&(identical(other.contactclient, contactclient) || other.contactclient == contactclient)&&(identical(other.montant, montant) || other.montant == montant)&&(identical(other.dateexpiration, dateexpiration) || other.dateexpiration == dateexpiration)&&(identical(other.montee, montee) || other.montee == montee)&&(identical(other.descente, descente) || other.descente == descente)&&(identical(other.codevoyage, codevoyage) || other.codevoyage == codevoyage)&&(identical(other.heurepassage, heurepassage) || other.heurepassage == heurepassage)&&(identical(other.datedepartprevue, datedepartprevue) || other.datedepartprevue == datedepartprevue)&&(identical(other.bonDisponible, bonDisponible) || other.bonDisponible == bonDisponible)&&(identical(other.billetEmis, billetEmis) || other.billetEmis == billetEmis)&&(identical(other.voyageDemarre, voyageDemarre) || other.voyageDemarre == voyageDemarre)&&(identical(other.positionActuelle, positionActuelle) || other.positionActuelle == positionActuelle)&&(identical(other.retardMinutes, retardMinutes) || other.retardMinutes == retardMinutes)&&(identical(other.heurepassageEstimee, heurepassageEstimee) || other.heurepassageEstimee == heurepassageEstimee)&&(identical(other.paiement, paiement) || other.paiement == paiement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,code,statut,etatpaiement,nomclient,contactclient,montant,dateexpiration,montee,descente,codevoyage,heurepassage,datedepartprevue,bonDisponible,billetEmis,voyageDemarre,positionActuelle,retardMinutes,heurepassageEstimee,paiement]);

@override
String toString() {
  return 'Reservation(code: $code, statut: $statut, etatpaiement: $etatpaiement, nomclient: $nomclient, contactclient: $contactclient, montant: $montant, dateexpiration: $dateexpiration, montee: $montee, descente: $descente, codevoyage: $codevoyage, heurepassage: $heurepassage, datedepartprevue: $datedepartprevue, bonDisponible: $bonDisponible, billetEmis: $billetEmis, voyageDemarre: $voyageDemarre, positionActuelle: $positionActuelle, retardMinutes: $retardMinutes, heurepassageEstimee: $heurepassageEstimee, paiement: $paiement)';
}


}

/// @nodoc
abstract mixin class $ReservationCopyWith<$Res>  {
  factory $ReservationCopyWith(Reservation value, $Res Function(Reservation) _then) = _$ReservationCopyWithImpl;
@useResult
$Res call({
 String code, String statut, String etatpaiement, String? nomclient, String? contactclient, int? montant, DateTime? dateexpiration, String? montee, String? descente, String? codevoyage, DateTime? heurepassage, DateTime? datedepartprevue, bool bonDisponible, String? billetEmis, bool voyageDemarre, String? positionActuelle, int? retardMinutes, DateTime? heurepassageEstimee, PaiementInfo? paiement
});


$PaiementInfoCopyWith<$Res>? get paiement;

}
/// @nodoc
class _$ReservationCopyWithImpl<$Res>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._self, this._then);

  final Reservation _self;
  final $Res Function(Reservation) _then;

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? statut = null,Object? etatpaiement = null,Object? nomclient = freezed,Object? contactclient = freezed,Object? montant = freezed,Object? dateexpiration = freezed,Object? montee = freezed,Object? descente = freezed,Object? codevoyage = freezed,Object? heurepassage = freezed,Object? datedepartprevue = freezed,Object? bonDisponible = null,Object? billetEmis = freezed,Object? voyageDemarre = null,Object? positionActuelle = freezed,Object? retardMinutes = freezed,Object? heurepassageEstimee = freezed,Object? paiement = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,statut: null == statut ? _self.statut : statut // ignore: cast_nullable_to_non_nullable
as String,etatpaiement: null == etatpaiement ? _self.etatpaiement : etatpaiement // ignore: cast_nullable_to_non_nullable
as String,nomclient: freezed == nomclient ? _self.nomclient : nomclient // ignore: cast_nullable_to_non_nullable
as String?,contactclient: freezed == contactclient ? _self.contactclient : contactclient // ignore: cast_nullable_to_non_nullable
as String?,montant: freezed == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as int?,dateexpiration: freezed == dateexpiration ? _self.dateexpiration : dateexpiration // ignore: cast_nullable_to_non_nullable
as DateTime?,montee: freezed == montee ? _self.montee : montee // ignore: cast_nullable_to_non_nullable
as String?,descente: freezed == descente ? _self.descente : descente // ignore: cast_nullable_to_non_nullable
as String?,codevoyage: freezed == codevoyage ? _self.codevoyage : codevoyage // ignore: cast_nullable_to_non_nullable
as String?,heurepassage: freezed == heurepassage ? _self.heurepassage : heurepassage // ignore: cast_nullable_to_non_nullable
as DateTime?,datedepartprevue: freezed == datedepartprevue ? _self.datedepartprevue : datedepartprevue // ignore: cast_nullable_to_non_nullable
as DateTime?,bonDisponible: null == bonDisponible ? _self.bonDisponible : bonDisponible // ignore: cast_nullable_to_non_nullable
as bool,billetEmis: freezed == billetEmis ? _self.billetEmis : billetEmis // ignore: cast_nullable_to_non_nullable
as String?,voyageDemarre: null == voyageDemarre ? _self.voyageDemarre : voyageDemarre // ignore: cast_nullable_to_non_nullable
as bool,positionActuelle: freezed == positionActuelle ? _self.positionActuelle : positionActuelle // ignore: cast_nullable_to_non_nullable
as String?,retardMinutes: freezed == retardMinutes ? _self.retardMinutes : retardMinutes // ignore: cast_nullable_to_non_nullable
as int?,heurepassageEstimee: freezed == heurepassageEstimee ? _self.heurepassageEstimee : heurepassageEstimee // ignore: cast_nullable_to_non_nullable
as DateTime?,paiement: freezed == paiement ? _self.paiement : paiement // ignore: cast_nullable_to_non_nullable
as PaiementInfo?,
  ));
}
/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaiementInfoCopyWith<$Res>? get paiement {
    if (_self.paiement == null) {
    return null;
  }

  return $PaiementInfoCopyWith<$Res>(_self.paiement!, (value) {
    return _then(_self.copyWith(paiement: value));
  });
}
}


/// Adds pattern-matching-related methods to [Reservation].
extension ReservationPatterns on Reservation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reservation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reservation value)  $default,){
final _that = this;
switch (_that) {
case _Reservation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reservation value)?  $default,){
final _that = this;
switch (_that) {
case _Reservation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String statut,  String etatpaiement,  String? nomclient,  String? contactclient,  int? montant,  DateTime? dateexpiration,  String? montee,  String? descente,  String? codevoyage,  DateTime? heurepassage,  DateTime? datedepartprevue,  bool bonDisponible,  String? billetEmis,  bool voyageDemarre,  String? positionActuelle,  int? retardMinutes,  DateTime? heurepassageEstimee,  PaiementInfo? paiement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reservation() when $default != null:
return $default(_that.code,_that.statut,_that.etatpaiement,_that.nomclient,_that.contactclient,_that.montant,_that.dateexpiration,_that.montee,_that.descente,_that.codevoyage,_that.heurepassage,_that.datedepartprevue,_that.bonDisponible,_that.billetEmis,_that.voyageDemarre,_that.positionActuelle,_that.retardMinutes,_that.heurepassageEstimee,_that.paiement);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String statut,  String etatpaiement,  String? nomclient,  String? contactclient,  int? montant,  DateTime? dateexpiration,  String? montee,  String? descente,  String? codevoyage,  DateTime? heurepassage,  DateTime? datedepartprevue,  bool bonDisponible,  String? billetEmis,  bool voyageDemarre,  String? positionActuelle,  int? retardMinutes,  DateTime? heurepassageEstimee,  PaiementInfo? paiement)  $default,) {final _that = this;
switch (_that) {
case _Reservation():
return $default(_that.code,_that.statut,_that.etatpaiement,_that.nomclient,_that.contactclient,_that.montant,_that.dateexpiration,_that.montee,_that.descente,_that.codevoyage,_that.heurepassage,_that.datedepartprevue,_that.bonDisponible,_that.billetEmis,_that.voyageDemarre,_that.positionActuelle,_that.retardMinutes,_that.heurepassageEstimee,_that.paiement);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String statut,  String etatpaiement,  String? nomclient,  String? contactclient,  int? montant,  DateTime? dateexpiration,  String? montee,  String? descente,  String? codevoyage,  DateTime? heurepassage,  DateTime? datedepartprevue,  bool bonDisponible,  String? billetEmis,  bool voyageDemarre,  String? positionActuelle,  int? retardMinutes,  DateTime? heurepassageEstimee,  PaiementInfo? paiement)?  $default,) {final _that = this;
switch (_that) {
case _Reservation() when $default != null:
return $default(_that.code,_that.statut,_that.etatpaiement,_that.nomclient,_that.contactclient,_that.montant,_that.dateexpiration,_that.montee,_that.descente,_that.codevoyage,_that.heurepassage,_that.datedepartprevue,_that.bonDisponible,_that.billetEmis,_that.voyageDemarre,_that.positionActuelle,_that.retardMinutes,_that.heurepassageEstimee,_that.paiement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Reservation extends Reservation {
  const _Reservation({required this.code, required this.statut, required this.etatpaiement, this.nomclient, this.contactclient, this.montant, this.dateexpiration, this.montee, this.descente, this.codevoyage, this.heurepassage, this.datedepartprevue, this.bonDisponible = false, this.billetEmis, this.voyageDemarre = false, this.positionActuelle, this.retardMinutes, this.heurepassageEstimee, this.paiement}): super._();
  factory _Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);

@override final  String code;
@override final  String statut;
@override final  String etatpaiement;
@override final  String? nomclient;
@override final  String? contactclient;
@override final  int? montant;
@override final  DateTime? dateexpiration;
@override final  String? montee;
@override final  String? descente;
@override final  String? codevoyage;
/// Heure de passage du car à la gare de montée du client (cf. [heureEmbarquement]).
@override final  DateTime? heurepassage;
@override final  DateTime? datedepartprevue;
@override@JsonKey() final  bool bonDisponible;
@override final  String? billetEmis;
/// Le car a-t-il quitté son origine (départ réel horodaté) ?
@override@JsonKey() final  bool voyageDemarre;
/// Gare où se trouve actuellement le car ; null tant qu'il n'est pas parti.
@override final  String? positionActuelle;
/// Retard courant du car en minutes (positif = retard, négatif = avance) ; null si non mesuré.
@override final  int? retardMinutes;
/// Heure de passage ESTIMÉE chez le client = heure prévue + retard courant.
@override final  DateTime? heurepassageEstimee;
@override final  PaiementInfo? paiement;

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReservationCopyWith<_Reservation> get copyWith => __$ReservationCopyWithImpl<_Reservation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReservationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reservation&&(identical(other.code, code) || other.code == code)&&(identical(other.statut, statut) || other.statut == statut)&&(identical(other.etatpaiement, etatpaiement) || other.etatpaiement == etatpaiement)&&(identical(other.nomclient, nomclient) || other.nomclient == nomclient)&&(identical(other.contactclient, contactclient) || other.contactclient == contactclient)&&(identical(other.montant, montant) || other.montant == montant)&&(identical(other.dateexpiration, dateexpiration) || other.dateexpiration == dateexpiration)&&(identical(other.montee, montee) || other.montee == montee)&&(identical(other.descente, descente) || other.descente == descente)&&(identical(other.codevoyage, codevoyage) || other.codevoyage == codevoyage)&&(identical(other.heurepassage, heurepassage) || other.heurepassage == heurepassage)&&(identical(other.datedepartprevue, datedepartprevue) || other.datedepartprevue == datedepartprevue)&&(identical(other.bonDisponible, bonDisponible) || other.bonDisponible == bonDisponible)&&(identical(other.billetEmis, billetEmis) || other.billetEmis == billetEmis)&&(identical(other.voyageDemarre, voyageDemarre) || other.voyageDemarre == voyageDemarre)&&(identical(other.positionActuelle, positionActuelle) || other.positionActuelle == positionActuelle)&&(identical(other.retardMinutes, retardMinutes) || other.retardMinutes == retardMinutes)&&(identical(other.heurepassageEstimee, heurepassageEstimee) || other.heurepassageEstimee == heurepassageEstimee)&&(identical(other.paiement, paiement) || other.paiement == paiement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,code,statut,etatpaiement,nomclient,contactclient,montant,dateexpiration,montee,descente,codevoyage,heurepassage,datedepartprevue,bonDisponible,billetEmis,voyageDemarre,positionActuelle,retardMinutes,heurepassageEstimee,paiement]);

@override
String toString() {
  return 'Reservation(code: $code, statut: $statut, etatpaiement: $etatpaiement, nomclient: $nomclient, contactclient: $contactclient, montant: $montant, dateexpiration: $dateexpiration, montee: $montee, descente: $descente, codevoyage: $codevoyage, heurepassage: $heurepassage, datedepartprevue: $datedepartprevue, bonDisponible: $bonDisponible, billetEmis: $billetEmis, voyageDemarre: $voyageDemarre, positionActuelle: $positionActuelle, retardMinutes: $retardMinutes, heurepassageEstimee: $heurepassageEstimee, paiement: $paiement)';
}


}

/// @nodoc
abstract mixin class _$ReservationCopyWith<$Res> implements $ReservationCopyWith<$Res> {
  factory _$ReservationCopyWith(_Reservation value, $Res Function(_Reservation) _then) = __$ReservationCopyWithImpl;
@override @useResult
$Res call({
 String code, String statut, String etatpaiement, String? nomclient, String? contactclient, int? montant, DateTime? dateexpiration, String? montee, String? descente, String? codevoyage, DateTime? heurepassage, DateTime? datedepartprevue, bool bonDisponible, String? billetEmis, bool voyageDemarre, String? positionActuelle, int? retardMinutes, DateTime? heurepassageEstimee, PaiementInfo? paiement
});


@override $PaiementInfoCopyWith<$Res>? get paiement;

}
/// @nodoc
class __$ReservationCopyWithImpl<$Res>
    implements _$ReservationCopyWith<$Res> {
  __$ReservationCopyWithImpl(this._self, this._then);

  final _Reservation _self;
  final $Res Function(_Reservation) _then;

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? statut = null,Object? etatpaiement = null,Object? nomclient = freezed,Object? contactclient = freezed,Object? montant = freezed,Object? dateexpiration = freezed,Object? montee = freezed,Object? descente = freezed,Object? codevoyage = freezed,Object? heurepassage = freezed,Object? datedepartprevue = freezed,Object? bonDisponible = null,Object? billetEmis = freezed,Object? voyageDemarre = null,Object? positionActuelle = freezed,Object? retardMinutes = freezed,Object? heurepassageEstimee = freezed,Object? paiement = freezed,}) {
  return _then(_Reservation(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,statut: null == statut ? _self.statut : statut // ignore: cast_nullable_to_non_nullable
as String,etatpaiement: null == etatpaiement ? _self.etatpaiement : etatpaiement // ignore: cast_nullable_to_non_nullable
as String,nomclient: freezed == nomclient ? _self.nomclient : nomclient // ignore: cast_nullable_to_non_nullable
as String?,contactclient: freezed == contactclient ? _self.contactclient : contactclient // ignore: cast_nullable_to_non_nullable
as String?,montant: freezed == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as int?,dateexpiration: freezed == dateexpiration ? _self.dateexpiration : dateexpiration // ignore: cast_nullable_to_non_nullable
as DateTime?,montee: freezed == montee ? _self.montee : montee // ignore: cast_nullable_to_non_nullable
as String?,descente: freezed == descente ? _self.descente : descente // ignore: cast_nullable_to_non_nullable
as String?,codevoyage: freezed == codevoyage ? _self.codevoyage : codevoyage // ignore: cast_nullable_to_non_nullable
as String?,heurepassage: freezed == heurepassage ? _self.heurepassage : heurepassage // ignore: cast_nullable_to_non_nullable
as DateTime?,datedepartprevue: freezed == datedepartprevue ? _self.datedepartprevue : datedepartprevue // ignore: cast_nullable_to_non_nullable
as DateTime?,bonDisponible: null == bonDisponible ? _self.bonDisponible : bonDisponible // ignore: cast_nullable_to_non_nullable
as bool,billetEmis: freezed == billetEmis ? _self.billetEmis : billetEmis // ignore: cast_nullable_to_non_nullable
as String?,voyageDemarre: null == voyageDemarre ? _self.voyageDemarre : voyageDemarre // ignore: cast_nullable_to_non_nullable
as bool,positionActuelle: freezed == positionActuelle ? _self.positionActuelle : positionActuelle // ignore: cast_nullable_to_non_nullable
as String?,retardMinutes: freezed == retardMinutes ? _self.retardMinutes : retardMinutes // ignore: cast_nullable_to_non_nullable
as int?,heurepassageEstimee: freezed == heurepassageEstimee ? _self.heurepassageEstimee : heurepassageEstimee // ignore: cast_nullable_to_non_nullable
as DateTime?,paiement: freezed == paiement ? _self.paiement : paiement // ignore: cast_nullable_to_non_nullable
as PaiementInfo?,
  ));
}

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaiementInfoCopyWith<$Res>? get paiement {
    if (_self.paiement == null) {
    return null;
  }

  return $PaiementInfoCopyWith<$Res>(_self.paiement!, (value) {
    return _then(_self.copyWith(paiement: value));
  });
}
}

// dart format on
