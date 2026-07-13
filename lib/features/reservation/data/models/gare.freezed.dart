// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gare.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Gare {

 int get id; String get libelle; String? get ville;
/// Create a copy of Gare
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GareCopyWith<Gare> get copyWith => _$GareCopyWithImpl<Gare>(this as Gare, _$identity);

  /// Serializes this Gare to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Gare&&(identical(other.id, id) || other.id == id)&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.ville, ville) || other.ville == ville));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,libelle,ville);

@override
String toString() {
  return 'Gare(id: $id, libelle: $libelle, ville: $ville)';
}


}

/// @nodoc
abstract mixin class $GareCopyWith<$Res>  {
  factory $GareCopyWith(Gare value, $Res Function(Gare) _then) = _$GareCopyWithImpl;
@useResult
$Res call({
 int id, String libelle, String? ville
});




}
/// @nodoc
class _$GareCopyWithImpl<$Res>
    implements $GareCopyWith<$Res> {
  _$GareCopyWithImpl(this._self, this._then);

  final Gare _self;
  final $Res Function(Gare) _then;

/// Create a copy of Gare
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? libelle = null,Object? ville = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,libelle: null == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String,ville: freezed == ville ? _self.ville : ville // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Gare].
extension GarePatterns on Gare {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Gare value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gare() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Gare value)  $default,){
final _that = this;
switch (_that) {
case _Gare():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Gare value)?  $default,){
final _that = this;
switch (_that) {
case _Gare() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String libelle,  String? ville)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gare() when $default != null:
return $default(_that.id,_that.libelle,_that.ville);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String libelle,  String? ville)  $default,) {final _that = this;
switch (_that) {
case _Gare():
return $default(_that.id,_that.libelle,_that.ville);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String libelle,  String? ville)?  $default,) {final _that = this;
switch (_that) {
case _Gare() when $default != null:
return $default(_that.id,_that.libelle,_that.ville);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Gare implements Gare {
  const _Gare({required this.id, required this.libelle, this.ville});
  factory _Gare.fromJson(Map<String, dynamic> json) => _$GareFromJson(json);

@override final  int id;
@override final  String libelle;
@override final  String? ville;

/// Create a copy of Gare
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GareCopyWith<_Gare> get copyWith => __$GareCopyWithImpl<_Gare>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GareToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gare&&(identical(other.id, id) || other.id == id)&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.ville, ville) || other.ville == ville));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,libelle,ville);

@override
String toString() {
  return 'Gare(id: $id, libelle: $libelle, ville: $ville)';
}


}

/// @nodoc
abstract mixin class _$GareCopyWith<$Res> implements $GareCopyWith<$Res> {
  factory _$GareCopyWith(_Gare value, $Res Function(_Gare) _then) = __$GareCopyWithImpl;
@override @useResult
$Res call({
 int id, String libelle, String? ville
});




}
/// @nodoc
class __$GareCopyWithImpl<$Res>
    implements _$GareCopyWith<$Res> {
  __$GareCopyWithImpl(this._self, this._then);

  final _Gare _self;
  final $Res Function(_Gare) _then;

/// Create a copy of Gare
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? libelle = null,Object? ville = freezed,}) {
  return _then(_Gare(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,libelle: null == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String,ville: freezed == ville ? _self.ville : ville // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
