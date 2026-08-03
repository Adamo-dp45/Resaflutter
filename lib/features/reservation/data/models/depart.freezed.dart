// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'depart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Depart {

 int get voyageId; String? get codevoyage;/// Heure de passage du car À LA GARE DE MONTÉE demandée — calculée par l'API
/// (durées de trajet par arrêt), jamais ici.
 DateTime? get heurepassage; DateTime? get datedepartprevue; DateTime? get datearriveeprevue; int get placesDisponibles; int? get montant;
/// Create a copy of Depart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartCopyWith<Depart> get copyWith => _$DepartCopyWithImpl<Depart>(this as Depart, _$identity);

  /// Serializes this Depart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Depart&&(identical(other.voyageId, voyageId) || other.voyageId == voyageId)&&(identical(other.codevoyage, codevoyage) || other.codevoyage == codevoyage)&&(identical(other.heurepassage, heurepassage) || other.heurepassage == heurepassage)&&(identical(other.datedepartprevue, datedepartprevue) || other.datedepartprevue == datedepartprevue)&&(identical(other.datearriveeprevue, datearriveeprevue) || other.datearriveeprevue == datearriveeprevue)&&(identical(other.placesDisponibles, placesDisponibles) || other.placesDisponibles == placesDisponibles)&&(identical(other.montant, montant) || other.montant == montant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,voyageId,codevoyage,heurepassage,datedepartprevue,datearriveeprevue,placesDisponibles,montant);

@override
String toString() {
  return 'Depart(voyageId: $voyageId, codevoyage: $codevoyage, heurepassage: $heurepassage, datedepartprevue: $datedepartprevue, datearriveeprevue: $datearriveeprevue, placesDisponibles: $placesDisponibles, montant: $montant)';
}


}

/// @nodoc
abstract mixin class $DepartCopyWith<$Res>  {
  factory $DepartCopyWith(Depart value, $Res Function(Depart) _then) = _$DepartCopyWithImpl;
@useResult
$Res call({
 int voyageId, String? codevoyage, DateTime? heurepassage, DateTime? datedepartprevue, DateTime? datearriveeprevue, int placesDisponibles, int? montant
});




}
/// @nodoc
class _$DepartCopyWithImpl<$Res>
    implements $DepartCopyWith<$Res> {
  _$DepartCopyWithImpl(this._self, this._then);

  final Depart _self;
  final $Res Function(Depart) _then;

/// Create a copy of Depart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voyageId = null,Object? codevoyage = freezed,Object? heurepassage = freezed,Object? datedepartprevue = freezed,Object? datearriveeprevue = freezed,Object? placesDisponibles = null,Object? montant = freezed,}) {
  return _then(_self.copyWith(
voyageId: null == voyageId ? _self.voyageId : voyageId // ignore: cast_nullable_to_non_nullable
as int,codevoyage: freezed == codevoyage ? _self.codevoyage : codevoyage // ignore: cast_nullable_to_non_nullable
as String?,heurepassage: freezed == heurepassage ? _self.heurepassage : heurepassage // ignore: cast_nullable_to_non_nullable
as DateTime?,datedepartprevue: freezed == datedepartprevue ? _self.datedepartprevue : datedepartprevue // ignore: cast_nullable_to_non_nullable
as DateTime?,datearriveeprevue: freezed == datearriveeprevue ? _self.datearriveeprevue : datearriveeprevue // ignore: cast_nullable_to_non_nullable
as DateTime?,placesDisponibles: null == placesDisponibles ? _self.placesDisponibles : placesDisponibles // ignore: cast_nullable_to_non_nullable
as int,montant: freezed == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Depart].
extension DepartPatterns on Depart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Depart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Depart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Depart value)  $default,){
final _that = this;
switch (_that) {
case _Depart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Depart value)?  $default,){
final _that = this;
switch (_that) {
case _Depart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int voyageId,  String? codevoyage,  DateTime? heurepassage,  DateTime? datedepartprevue,  DateTime? datearriveeprevue,  int placesDisponibles,  int? montant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Depart() when $default != null:
return $default(_that.voyageId,_that.codevoyage,_that.heurepassage,_that.datedepartprevue,_that.datearriveeprevue,_that.placesDisponibles,_that.montant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int voyageId,  String? codevoyage,  DateTime? heurepassage,  DateTime? datedepartprevue,  DateTime? datearriveeprevue,  int placesDisponibles,  int? montant)  $default,) {final _that = this;
switch (_that) {
case _Depart():
return $default(_that.voyageId,_that.codevoyage,_that.heurepassage,_that.datedepartprevue,_that.datearriveeprevue,_that.placesDisponibles,_that.montant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int voyageId,  String? codevoyage,  DateTime? heurepassage,  DateTime? datedepartprevue,  DateTime? datearriveeprevue,  int placesDisponibles,  int? montant)?  $default,) {final _that = this;
switch (_that) {
case _Depart() when $default != null:
return $default(_that.voyageId,_that.codevoyage,_that.heurepassage,_that.datedepartprevue,_that.datearriveeprevue,_that.placesDisponibles,_that.montant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Depart extends Depart {
  const _Depart({required this.voyageId, this.codevoyage, this.heurepassage, this.datedepartprevue, this.datearriveeprevue, this.placesDisponibles = 0, this.montant}): super._();
  factory _Depart.fromJson(Map<String, dynamic> json) => _$DepartFromJson(json);

@override final  int voyageId;
@override final  String? codevoyage;
/// Heure de passage du car À LA GARE DE MONTÉE demandée — calculée par l'API
/// (durées de trajet par arrêt), jamais ici.
@override final  DateTime? heurepassage;
@override final  DateTime? datedepartprevue;
@override final  DateTime? datearriveeprevue;
@override@JsonKey() final  int placesDisponibles;
@override final  int? montant;

/// Create a copy of Depart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartCopyWith<_Depart> get copyWith => __$DepartCopyWithImpl<_Depart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Depart&&(identical(other.voyageId, voyageId) || other.voyageId == voyageId)&&(identical(other.codevoyage, codevoyage) || other.codevoyage == codevoyage)&&(identical(other.heurepassage, heurepassage) || other.heurepassage == heurepassage)&&(identical(other.datedepartprevue, datedepartprevue) || other.datedepartprevue == datedepartprevue)&&(identical(other.datearriveeprevue, datearriveeprevue) || other.datearriveeprevue == datearriveeprevue)&&(identical(other.placesDisponibles, placesDisponibles) || other.placesDisponibles == placesDisponibles)&&(identical(other.montant, montant) || other.montant == montant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,voyageId,codevoyage,heurepassage,datedepartprevue,datearriveeprevue,placesDisponibles,montant);

@override
String toString() {
  return 'Depart(voyageId: $voyageId, codevoyage: $codevoyage, heurepassage: $heurepassage, datedepartprevue: $datedepartprevue, datearriveeprevue: $datearriveeprevue, placesDisponibles: $placesDisponibles, montant: $montant)';
}


}

/// @nodoc
abstract mixin class _$DepartCopyWith<$Res> implements $DepartCopyWith<$Res> {
  factory _$DepartCopyWith(_Depart value, $Res Function(_Depart) _then) = __$DepartCopyWithImpl;
@override @useResult
$Res call({
 int voyageId, String? codevoyage, DateTime? heurepassage, DateTime? datedepartprevue, DateTime? datearriveeprevue, int placesDisponibles, int? montant
});




}
/// @nodoc
class __$DepartCopyWithImpl<$Res>
    implements _$DepartCopyWith<$Res> {
  __$DepartCopyWithImpl(this._self, this._then);

  final _Depart _self;
  final $Res Function(_Depart) _then;

/// Create a copy of Depart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? voyageId = null,Object? codevoyage = freezed,Object? heurepassage = freezed,Object? datedepartprevue = freezed,Object? datearriveeprevue = freezed,Object? placesDisponibles = null,Object? montant = freezed,}) {
  return _then(_Depart(
voyageId: null == voyageId ? _self.voyageId : voyageId // ignore: cast_nullable_to_non_nullable
as int,codevoyage: freezed == codevoyage ? _self.codevoyage : codevoyage // ignore: cast_nullable_to_non_nullable
as String?,heurepassage: freezed == heurepassage ? _self.heurepassage : heurepassage // ignore: cast_nullable_to_non_nullable
as DateTime?,datedepartprevue: freezed == datedepartprevue ? _self.datedepartprevue : datedepartprevue // ignore: cast_nullable_to_non_nullable
as DateTime?,datearriveeprevue: freezed == datearriveeprevue ? _self.datearriveeprevue : datearriveeprevue // ignore: cast_nullable_to_non_nullable
as DateTime?,placesDisponibles: null == placesDisponibles ? _self.placesDisponibles : placesDisponibles // ignore: cast_nullable_to_non_nullable
as int,montant: freezed == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
