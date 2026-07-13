// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Destination {

 Gare get gare; int get montant;
/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DestinationCopyWith<Destination> get copyWith => _$DestinationCopyWithImpl<Destination>(this as Destination, _$identity);

  /// Serializes this Destination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Destination&&(identical(other.gare, gare) || other.gare == gare)&&(identical(other.montant, montant) || other.montant == montant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gare,montant);

@override
String toString() {
  return 'Destination(gare: $gare, montant: $montant)';
}


}

/// @nodoc
abstract mixin class $DestinationCopyWith<$Res>  {
  factory $DestinationCopyWith(Destination value, $Res Function(Destination) _then) = _$DestinationCopyWithImpl;
@useResult
$Res call({
 Gare gare, int montant
});


$GareCopyWith<$Res> get gare;

}
/// @nodoc
class _$DestinationCopyWithImpl<$Res>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._self, this._then);

  final Destination _self;
  final $Res Function(Destination) _then;

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gare = null,Object? montant = null,}) {
  return _then(_self.copyWith(
gare: null == gare ? _self.gare : gare // ignore: cast_nullable_to_non_nullable
as Gare,montant: null == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GareCopyWith<$Res> get gare {
  
  return $GareCopyWith<$Res>(_self.gare, (value) {
    return _then(_self.copyWith(gare: value));
  });
}
}


/// Adds pattern-matching-related methods to [Destination].
extension DestinationPatterns on Destination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Destination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Destination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Destination value)  $default,){
final _that = this;
switch (_that) {
case _Destination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Destination value)?  $default,){
final _that = this;
switch (_that) {
case _Destination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Gare gare,  int montant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Destination() when $default != null:
return $default(_that.gare,_that.montant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Gare gare,  int montant)  $default,) {final _that = this;
switch (_that) {
case _Destination():
return $default(_that.gare,_that.montant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Gare gare,  int montant)?  $default,) {final _that = this;
switch (_that) {
case _Destination() when $default != null:
return $default(_that.gare,_that.montant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Destination implements Destination {
  const _Destination({required this.gare, required this.montant});
  factory _Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);

@override final  Gare gare;
@override final  int montant;

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationCopyWith<_Destination> get copyWith => __$DestinationCopyWithImpl<_Destination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DestinationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Destination&&(identical(other.gare, gare) || other.gare == gare)&&(identical(other.montant, montant) || other.montant == montant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gare,montant);

@override
String toString() {
  return 'Destination(gare: $gare, montant: $montant)';
}


}

/// @nodoc
abstract mixin class _$DestinationCopyWith<$Res> implements $DestinationCopyWith<$Res> {
  factory _$DestinationCopyWith(_Destination value, $Res Function(_Destination) _then) = __$DestinationCopyWithImpl;
@override @useResult
$Res call({
 Gare gare, int montant
});


@override $GareCopyWith<$Res> get gare;

}
/// @nodoc
class __$DestinationCopyWithImpl<$Res>
    implements _$DestinationCopyWith<$Res> {
  __$DestinationCopyWithImpl(this._self, this._then);

  final _Destination _self;
  final $Res Function(_Destination) _then;

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gare = null,Object? montant = null,}) {
  return _then(_Destination(
gare: null == gare ? _self.gare : gare // ignore: cast_nullable_to_non_nullable
as Gare,montant: null == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GareCopyWith<$Res> get gare {
  
  return $GareCopyWith<$Res>(_self.gare, (value) {
    return _then(_self.copyWith(gare: value));
  });
}
}

// dart format on
