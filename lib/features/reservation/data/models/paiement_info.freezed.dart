// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paiement_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaiementInfo {

 String get reference; String? get url; bool get estSimule;
/// Create a copy of PaiementInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaiementInfoCopyWith<PaiementInfo> get copyWith => _$PaiementInfoCopyWithImpl<PaiementInfo>(this as PaiementInfo, _$identity);

  /// Serializes this PaiementInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaiementInfo&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.url, url) || other.url == url)&&(identical(other.estSimule, estSimule) || other.estSimule == estSimule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,url,estSimule);

@override
String toString() {
  return 'PaiementInfo(reference: $reference, url: $url, estSimule: $estSimule)';
}


}

/// @nodoc
abstract mixin class $PaiementInfoCopyWith<$Res>  {
  factory $PaiementInfoCopyWith(PaiementInfo value, $Res Function(PaiementInfo) _then) = _$PaiementInfoCopyWithImpl;
@useResult
$Res call({
 String reference, String? url, bool estSimule
});




}
/// @nodoc
class _$PaiementInfoCopyWithImpl<$Res>
    implements $PaiementInfoCopyWith<$Res> {
  _$PaiementInfoCopyWithImpl(this._self, this._then);

  final PaiementInfo _self;
  final $Res Function(PaiementInfo) _then;

/// Create a copy of PaiementInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reference = null,Object? url = freezed,Object? estSimule = null,}) {
  return _then(_self.copyWith(
reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,estSimule: null == estSimule ? _self.estSimule : estSimule // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaiementInfo].
extension PaiementInfoPatterns on PaiementInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaiementInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaiementInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaiementInfo value)  $default,){
final _that = this;
switch (_that) {
case _PaiementInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaiementInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PaiementInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reference,  String? url,  bool estSimule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaiementInfo() when $default != null:
return $default(_that.reference,_that.url,_that.estSimule);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reference,  String? url,  bool estSimule)  $default,) {final _that = this;
switch (_that) {
case _PaiementInfo():
return $default(_that.reference,_that.url,_that.estSimule);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reference,  String? url,  bool estSimule)?  $default,) {final _that = this;
switch (_that) {
case _PaiementInfo() when $default != null:
return $default(_that.reference,_that.url,_that.estSimule);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaiementInfo implements PaiementInfo {
  const _PaiementInfo({required this.reference, this.url, this.estSimule = false});
  factory _PaiementInfo.fromJson(Map<String, dynamic> json) => _$PaiementInfoFromJson(json);

@override final  String reference;
@override final  String? url;
@override@JsonKey() final  bool estSimule;

/// Create a copy of PaiementInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaiementInfoCopyWith<_PaiementInfo> get copyWith => __$PaiementInfoCopyWithImpl<_PaiementInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaiementInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaiementInfo&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.url, url) || other.url == url)&&(identical(other.estSimule, estSimule) || other.estSimule == estSimule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,url,estSimule);

@override
String toString() {
  return 'PaiementInfo(reference: $reference, url: $url, estSimule: $estSimule)';
}


}

/// @nodoc
abstract mixin class _$PaiementInfoCopyWith<$Res> implements $PaiementInfoCopyWith<$Res> {
  factory _$PaiementInfoCopyWith(_PaiementInfo value, $Res Function(_PaiementInfo) _then) = __$PaiementInfoCopyWithImpl;
@override @useResult
$Res call({
 String reference, String? url, bool estSimule
});




}
/// @nodoc
class __$PaiementInfoCopyWithImpl<$Res>
    implements _$PaiementInfoCopyWith<$Res> {
  __$PaiementInfoCopyWithImpl(this._self, this._then);

  final _PaiementInfo _self;
  final $Res Function(_PaiementInfo) _then;

/// Create a copy of PaiementInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reference = null,Object? url = freezed,Object? estSimule = null,}) {
  return _then(_PaiementInfo(
reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,estSimule: null == estSimule ? _self.estSimule : estSimule // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
