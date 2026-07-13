// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compagnie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Compagnie {

 String get slug; String? get libelle; String? get sigle; String? get contact; String? get siteweb;
/// Create a copy of Compagnie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompagnieCopyWith<Compagnie> get copyWith => _$CompagnieCopyWithImpl<Compagnie>(this as Compagnie, _$identity);

  /// Serializes this Compagnie to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Compagnie&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.siteweb, siteweb) || other.siteweb == siteweb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,libelle,sigle,contact,siteweb);

@override
String toString() {
  return 'Compagnie(slug: $slug, libelle: $libelle, sigle: $sigle, contact: $contact, siteweb: $siteweb)';
}


}

/// @nodoc
abstract mixin class $CompagnieCopyWith<$Res>  {
  factory $CompagnieCopyWith(Compagnie value, $Res Function(Compagnie) _then) = _$CompagnieCopyWithImpl;
@useResult
$Res call({
 String slug, String? libelle, String? sigle, String? contact, String? siteweb
});




}
/// @nodoc
class _$CompagnieCopyWithImpl<$Res>
    implements $CompagnieCopyWith<$Res> {
  _$CompagnieCopyWithImpl(this._self, this._then);

  final Compagnie _self;
  final $Res Function(Compagnie) _then;

/// Create a copy of Compagnie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? libelle = freezed,Object? sigle = freezed,Object? contact = freezed,Object? siteweb = freezed,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,libelle: freezed == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String?,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,siteweb: freezed == siteweb ? _self.siteweb : siteweb // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Compagnie].
extension CompagniePatterns on Compagnie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Compagnie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Compagnie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Compagnie value)  $default,){
final _that = this;
switch (_that) {
case _Compagnie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Compagnie value)?  $default,){
final _that = this;
switch (_that) {
case _Compagnie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String? libelle,  String? sigle,  String? contact,  String? siteweb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Compagnie() when $default != null:
return $default(_that.slug,_that.libelle,_that.sigle,_that.contact,_that.siteweb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String? libelle,  String? sigle,  String? contact,  String? siteweb)  $default,) {final _that = this;
switch (_that) {
case _Compagnie():
return $default(_that.slug,_that.libelle,_that.sigle,_that.contact,_that.siteweb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String? libelle,  String? sigle,  String? contact,  String? siteweb)?  $default,) {final _that = this;
switch (_that) {
case _Compagnie() when $default != null:
return $default(_that.slug,_that.libelle,_that.sigle,_that.contact,_that.siteweb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Compagnie implements Compagnie {
  const _Compagnie({required this.slug, this.libelle, this.sigle, this.contact, this.siteweb});
  factory _Compagnie.fromJson(Map<String, dynamic> json) => _$CompagnieFromJson(json);

@override final  String slug;
@override final  String? libelle;
@override final  String? sigle;
@override final  String? contact;
@override final  String? siteweb;

/// Create a copy of Compagnie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompagnieCopyWith<_Compagnie> get copyWith => __$CompagnieCopyWithImpl<_Compagnie>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompagnieToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Compagnie&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.siteweb, siteweb) || other.siteweb == siteweb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,libelle,sigle,contact,siteweb);

@override
String toString() {
  return 'Compagnie(slug: $slug, libelle: $libelle, sigle: $sigle, contact: $contact, siteweb: $siteweb)';
}


}

/// @nodoc
abstract mixin class _$CompagnieCopyWith<$Res> implements $CompagnieCopyWith<$Res> {
  factory _$CompagnieCopyWith(_Compagnie value, $Res Function(_Compagnie) _then) = __$CompagnieCopyWithImpl;
@override @useResult
$Res call({
 String slug, String? libelle, String? sigle, String? contact, String? siteweb
});




}
/// @nodoc
class __$CompagnieCopyWithImpl<$Res>
    implements _$CompagnieCopyWith<$Res> {
  __$CompagnieCopyWithImpl(this._self, this._then);

  final _Compagnie _self;
  final $Res Function(_Compagnie) _then;

/// Create a copy of Compagnie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? libelle = freezed,Object? sigle = freezed,Object? contact = freezed,Object? siteweb = freezed,}) {
  return _then(_Compagnie(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,libelle: freezed == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String?,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,siteweb: freezed == siteweb ? _self.siteweb : siteweb // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
