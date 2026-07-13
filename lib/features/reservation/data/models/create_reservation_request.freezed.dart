// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_reservation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateReservationRequest {

 String get nom; String get contact; int get voyage; int get montee; int? get descente; String? get returnUrl;
/// Create a copy of CreateReservationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReservationRequestCopyWith<CreateReservationRequest> get copyWith => _$CreateReservationRequestCopyWithImpl<CreateReservationRequest>(this as CreateReservationRequest, _$identity);

  /// Serializes this CreateReservationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReservationRequest&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.voyage, voyage) || other.voyage == voyage)&&(identical(other.montee, montee) || other.montee == montee)&&(identical(other.descente, descente) || other.descente == descente)&&(identical(other.returnUrl, returnUrl) || other.returnUrl == returnUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nom,contact,voyage,montee,descente,returnUrl);

@override
String toString() {
  return 'CreateReservationRequest(nom: $nom, contact: $contact, voyage: $voyage, montee: $montee, descente: $descente, returnUrl: $returnUrl)';
}


}

/// @nodoc
abstract mixin class $CreateReservationRequestCopyWith<$Res>  {
  factory $CreateReservationRequestCopyWith(CreateReservationRequest value, $Res Function(CreateReservationRequest) _then) = _$CreateReservationRequestCopyWithImpl;
@useResult
$Res call({
 String nom, String contact, int voyage, int montee, int? descente, String? returnUrl
});




}
/// @nodoc
class _$CreateReservationRequestCopyWithImpl<$Res>
    implements $CreateReservationRequestCopyWith<$Res> {
  _$CreateReservationRequestCopyWithImpl(this._self, this._then);

  final CreateReservationRequest _self;
  final $Res Function(CreateReservationRequest) _then;

/// Create a copy of CreateReservationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nom = null,Object? contact = null,Object? voyage = null,Object? montee = null,Object? descente = freezed,Object? returnUrl = freezed,}) {
  return _then(_self.copyWith(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,voyage: null == voyage ? _self.voyage : voyage // ignore: cast_nullable_to_non_nullable
as int,montee: null == montee ? _self.montee : montee // ignore: cast_nullable_to_non_nullable
as int,descente: freezed == descente ? _self.descente : descente // ignore: cast_nullable_to_non_nullable
as int?,returnUrl: freezed == returnUrl ? _self.returnUrl : returnUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReservationRequest].
extension CreateReservationRequestPatterns on CreateReservationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReservationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReservationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReservationRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateReservationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReservationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReservationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nom,  String contact,  int voyage,  int montee,  int? descente,  String? returnUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReservationRequest() when $default != null:
return $default(_that.nom,_that.contact,_that.voyage,_that.montee,_that.descente,_that.returnUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nom,  String contact,  int voyage,  int montee,  int? descente,  String? returnUrl)  $default,) {final _that = this;
switch (_that) {
case _CreateReservationRequest():
return $default(_that.nom,_that.contact,_that.voyage,_that.montee,_that.descente,_that.returnUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nom,  String contact,  int voyage,  int montee,  int? descente,  String? returnUrl)?  $default,) {final _that = this;
switch (_that) {
case _CreateReservationRequest() when $default != null:
return $default(_that.nom,_that.contact,_that.voyage,_that.montee,_that.descente,_that.returnUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReservationRequest implements CreateReservationRequest {
  const _CreateReservationRequest({required this.nom, required this.contact, required this.voyage, required this.montee, this.descente, this.returnUrl});
  factory _CreateReservationRequest.fromJson(Map<String, dynamic> json) => _$CreateReservationRequestFromJson(json);

@override final  String nom;
@override final  String contact;
@override final  int voyage;
@override final  int montee;
@override final  int? descente;
@override final  String? returnUrl;

/// Create a copy of CreateReservationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReservationRequestCopyWith<_CreateReservationRequest> get copyWith => __$CreateReservationRequestCopyWithImpl<_CreateReservationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReservationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReservationRequest&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.voyage, voyage) || other.voyage == voyage)&&(identical(other.montee, montee) || other.montee == montee)&&(identical(other.descente, descente) || other.descente == descente)&&(identical(other.returnUrl, returnUrl) || other.returnUrl == returnUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nom,contact,voyage,montee,descente,returnUrl);

@override
String toString() {
  return 'CreateReservationRequest(nom: $nom, contact: $contact, voyage: $voyage, montee: $montee, descente: $descente, returnUrl: $returnUrl)';
}


}

/// @nodoc
abstract mixin class _$CreateReservationRequestCopyWith<$Res> implements $CreateReservationRequestCopyWith<$Res> {
  factory _$CreateReservationRequestCopyWith(_CreateReservationRequest value, $Res Function(_CreateReservationRequest) _then) = __$CreateReservationRequestCopyWithImpl;
@override @useResult
$Res call({
 String nom, String contact, int voyage, int montee, int? descente, String? returnUrl
});




}
/// @nodoc
class __$CreateReservationRequestCopyWithImpl<$Res>
    implements _$CreateReservationRequestCopyWith<$Res> {
  __$CreateReservationRequestCopyWithImpl(this._self, this._then);

  final _CreateReservationRequest _self;
  final $Res Function(_CreateReservationRequest) _then;

/// Create a copy of CreateReservationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nom = null,Object? contact = null,Object? voyage = null,Object? montee = null,Object? descente = freezed,Object? returnUrl = freezed,}) {
  return _then(_CreateReservationRequest(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,voyage: null == voyage ? _self.voyage : voyage // ignore: cast_nullable_to_non_nullable
as int,montee: null == montee ? _self.montee : montee // ignore: cast_nullable_to_non_nullable
as int,descente: freezed == descente ? _self.descente : descente // ignore: cast_nullable_to_non_nullable
as int?,returnUrl: freezed == returnUrl ? _self.returnUrl : returnUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
