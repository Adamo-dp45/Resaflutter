// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingState {

 BookingStep get step; Ville? get villeDepart; Gare? get gareDepart; Destination? get destination; Depart? get depart; String get nom; String get contact; Reservation? get reservation; bool get submitting; String? get error;
/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingStateCopyWith<BookingState> get copyWith => _$BookingStateCopyWithImpl<BookingState>(this as BookingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingState&&(identical(other.step, step) || other.step == step)&&(identical(other.villeDepart, villeDepart) || other.villeDepart == villeDepart)&&(identical(other.gareDepart, gareDepart) || other.gareDepart == gareDepart)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.depart, depart) || other.depart == depart)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.reservation, reservation) || other.reservation == reservation)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,step,villeDepart,gareDepart,destination,depart,nom,contact,reservation,submitting,error);

@override
String toString() {
  return 'BookingState(step: $step, villeDepart: $villeDepart, gareDepart: $gareDepart, destination: $destination, depart: $depart, nom: $nom, contact: $contact, reservation: $reservation, submitting: $submitting, error: $error)';
}


}

/// @nodoc
abstract mixin class $BookingStateCopyWith<$Res>  {
  factory $BookingStateCopyWith(BookingState value, $Res Function(BookingState) _then) = _$BookingStateCopyWithImpl;
@useResult
$Res call({
 BookingStep step, Ville? villeDepart, Gare? gareDepart, Destination? destination, Depart? depart, String nom, String contact, Reservation? reservation, bool submitting, String? error
});


$VilleCopyWith<$Res>? get villeDepart;$GareCopyWith<$Res>? get gareDepart;$DestinationCopyWith<$Res>? get destination;$DepartCopyWith<$Res>? get depart;$ReservationCopyWith<$Res>? get reservation;

}
/// @nodoc
class _$BookingStateCopyWithImpl<$Res>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._self, this._then);

  final BookingState _self;
  final $Res Function(BookingState) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? villeDepart = freezed,Object? gareDepart = freezed,Object? destination = freezed,Object? depart = freezed,Object? nom = null,Object? contact = null,Object? reservation = freezed,Object? submitting = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as BookingStep,villeDepart: freezed == villeDepart ? _self.villeDepart : villeDepart // ignore: cast_nullable_to_non_nullable
as Ville?,gareDepart: freezed == gareDepart ? _self.gareDepart : gareDepart // ignore: cast_nullable_to_non_nullable
as Gare?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Destination?,depart: freezed == depart ? _self.depart : depart // ignore: cast_nullable_to_non_nullable
as Depart?,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,reservation: freezed == reservation ? _self.reservation : reservation // ignore: cast_nullable_to_non_nullable
as Reservation?,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VilleCopyWith<$Res>? get villeDepart {
    if (_self.villeDepart == null) {
    return null;
  }

  return $VilleCopyWith<$Res>(_self.villeDepart!, (value) {
    return _then(_self.copyWith(villeDepart: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GareCopyWith<$Res>? get gareDepart {
    if (_self.gareDepart == null) {
    return null;
  }

  return $GareCopyWith<$Res>(_self.gareDepart!, (value) {
    return _then(_self.copyWith(gareDepart: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DestinationCopyWith<$Res>? get destination {
    if (_self.destination == null) {
    return null;
  }

  return $DestinationCopyWith<$Res>(_self.destination!, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartCopyWith<$Res>? get depart {
    if (_self.depart == null) {
    return null;
  }

  return $DepartCopyWith<$Res>(_self.depart!, (value) {
    return _then(_self.copyWith(depart: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReservationCopyWith<$Res>? get reservation {
    if (_self.reservation == null) {
    return null;
  }

  return $ReservationCopyWith<$Res>(_self.reservation!, (value) {
    return _then(_self.copyWith(reservation: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingState].
extension BookingStatePatterns on BookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingState value)  $default,){
final _that = this;
switch (_that) {
case _BookingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingState value)?  $default,){
final _that = this;
switch (_that) {
case _BookingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BookingStep step,  Ville? villeDepart,  Gare? gareDepart,  Destination? destination,  Depart? depart,  String nom,  String contact,  Reservation? reservation,  bool submitting,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingState() when $default != null:
return $default(_that.step,_that.villeDepart,_that.gareDepart,_that.destination,_that.depart,_that.nom,_that.contact,_that.reservation,_that.submitting,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BookingStep step,  Ville? villeDepart,  Gare? gareDepart,  Destination? destination,  Depart? depart,  String nom,  String contact,  Reservation? reservation,  bool submitting,  String? error)  $default,) {final _that = this;
switch (_that) {
case _BookingState():
return $default(_that.step,_that.villeDepart,_that.gareDepart,_that.destination,_that.depart,_that.nom,_that.contact,_that.reservation,_that.submitting,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BookingStep step,  Ville? villeDepart,  Gare? gareDepart,  Destination? destination,  Depart? depart,  String nom,  String contact,  Reservation? reservation,  bool submitting,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _BookingState() when $default != null:
return $default(_that.step,_that.villeDepart,_that.gareDepart,_that.destination,_that.depart,_that.nom,_that.contact,_that.reservation,_that.submitting,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _BookingState extends BookingState {
  const _BookingState({this.step = BookingStep.troncon, this.villeDepart, this.gareDepart, this.destination, this.depart, this.nom = '', this.contact = '', this.reservation, this.submitting = false, this.error}): super._();
  

@override@JsonKey() final  BookingStep step;
@override final  Ville? villeDepart;
@override final  Gare? gareDepart;
@override final  Destination? destination;
@override final  Depart? depart;
@override@JsonKey() final  String nom;
@override@JsonKey() final  String contact;
@override final  Reservation? reservation;
@override@JsonKey() final  bool submitting;
@override final  String? error;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingStateCopyWith<_BookingState> get copyWith => __$BookingStateCopyWithImpl<_BookingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingState&&(identical(other.step, step) || other.step == step)&&(identical(other.villeDepart, villeDepart) || other.villeDepart == villeDepart)&&(identical(other.gareDepart, gareDepart) || other.gareDepart == gareDepart)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.depart, depart) || other.depart == depart)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.reservation, reservation) || other.reservation == reservation)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,step,villeDepart,gareDepart,destination,depart,nom,contact,reservation,submitting,error);

@override
String toString() {
  return 'BookingState(step: $step, villeDepart: $villeDepart, gareDepart: $gareDepart, destination: $destination, depart: $depart, nom: $nom, contact: $contact, reservation: $reservation, submitting: $submitting, error: $error)';
}


}

/// @nodoc
abstract mixin class _$BookingStateCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$BookingStateCopyWith(_BookingState value, $Res Function(_BookingState) _then) = __$BookingStateCopyWithImpl;
@override @useResult
$Res call({
 BookingStep step, Ville? villeDepart, Gare? gareDepart, Destination? destination, Depart? depart, String nom, String contact, Reservation? reservation, bool submitting, String? error
});


@override $VilleCopyWith<$Res>? get villeDepart;@override $GareCopyWith<$Res>? get gareDepart;@override $DestinationCopyWith<$Res>? get destination;@override $DepartCopyWith<$Res>? get depart;@override $ReservationCopyWith<$Res>? get reservation;

}
/// @nodoc
class __$BookingStateCopyWithImpl<$Res>
    implements _$BookingStateCopyWith<$Res> {
  __$BookingStateCopyWithImpl(this._self, this._then);

  final _BookingState _self;
  final $Res Function(_BookingState) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? villeDepart = freezed,Object? gareDepart = freezed,Object? destination = freezed,Object? depart = freezed,Object? nom = null,Object? contact = null,Object? reservation = freezed,Object? submitting = null,Object? error = freezed,}) {
  return _then(_BookingState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as BookingStep,villeDepart: freezed == villeDepart ? _self.villeDepart : villeDepart // ignore: cast_nullable_to_non_nullable
as Ville?,gareDepart: freezed == gareDepart ? _self.gareDepart : gareDepart // ignore: cast_nullable_to_non_nullable
as Gare?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Destination?,depart: freezed == depart ? _self.depart : depart // ignore: cast_nullable_to_non_nullable
as Depart?,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,reservation: freezed == reservation ? _self.reservation : reservation // ignore: cast_nullable_to_non_nullable
as Reservation?,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VilleCopyWith<$Res>? get villeDepart {
    if (_self.villeDepart == null) {
    return null;
  }

  return $VilleCopyWith<$Res>(_self.villeDepart!, (value) {
    return _then(_self.copyWith(villeDepart: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GareCopyWith<$Res>? get gareDepart {
    if (_self.gareDepart == null) {
    return null;
  }

  return $GareCopyWith<$Res>(_self.gareDepart!, (value) {
    return _then(_self.copyWith(gareDepart: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DestinationCopyWith<$Res>? get destination {
    if (_self.destination == null) {
    return null;
  }

  return $DestinationCopyWith<$Res>(_self.destination!, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartCopyWith<$Res>? get depart {
    if (_self.depart == null) {
    return null;
  }

  return $DepartCopyWith<$Res>(_self.depart!, (value) {
    return _then(_self.copyWith(depart: value));
  });
}/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReservationCopyWith<$Res>? get reservation {
    if (_self.reservation == null) {
    return null;
  }

  return $ReservationCopyWith<$Res>(_self.reservation!, (value) {
    return _then(_self.copyWith(reservation: value));
  });
}
}

// dart format on
