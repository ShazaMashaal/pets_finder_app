// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( BreedsLoading value)?  breedsLoading,TResult Function( BreedsSuccess value)?  breedsSuccess,TResult Function( BreedsError value)?  breedsError,TResult Function( PetsLoading value)?  petsLoading,TResult Function( PetsSuccess value)?  petsSuccess,TResult Function( PetsError value)?  petsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case BreedsLoading() when breedsLoading != null:
return breedsLoading(_that);case BreedsSuccess() when breedsSuccess != null:
return breedsSuccess(_that);case BreedsError() when breedsError != null:
return breedsError(_that);case PetsLoading() when petsLoading != null:
return petsLoading(_that);case PetsSuccess() when petsSuccess != null:
return petsSuccess(_that);case PetsError() when petsError != null:
return petsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( BreedsLoading value)  breedsLoading,required TResult Function( BreedsSuccess value)  breedsSuccess,required TResult Function( BreedsError value)  breedsError,required TResult Function( PetsLoading value)  petsLoading,required TResult Function( PetsSuccess value)  petsSuccess,required TResult Function( PetsError value)  petsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case BreedsLoading():
return breedsLoading(_that);case BreedsSuccess():
return breedsSuccess(_that);case BreedsError():
return breedsError(_that);case PetsLoading():
return petsLoading(_that);case PetsSuccess():
return petsSuccess(_that);case PetsError():
return petsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( BreedsLoading value)?  breedsLoading,TResult? Function( BreedsSuccess value)?  breedsSuccess,TResult? Function( BreedsError value)?  breedsError,TResult? Function( PetsLoading value)?  petsLoading,TResult? Function( PetsSuccess value)?  petsSuccess,TResult? Function( PetsError value)?  petsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case BreedsLoading() when breedsLoading != null:
return breedsLoading(_that);case BreedsSuccess() when breedsSuccess != null:
return breedsSuccess(_that);case BreedsError() when breedsError != null:
return breedsError(_that);case PetsLoading() when petsLoading != null:
return petsLoading(_that);case PetsSuccess() when petsSuccess != null:
return petsSuccess(_that);case PetsError() when petsError != null:
return petsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  breedsLoading,TResult Function( List<BreedModel?>? breedsList)?  breedsSuccess,TResult Function( ErrorHandler errorHandler)?  breedsError,TResult Function()?  petsLoading,TResult Function( List<PetModel?>? petsList)?  petsSuccess,TResult Function( ErrorHandler errorHandler)?  petsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case BreedsLoading() when breedsLoading != null:
return breedsLoading();case BreedsSuccess() when breedsSuccess != null:
return breedsSuccess(_that.breedsList);case BreedsError() when breedsError != null:
return breedsError(_that.errorHandler);case PetsLoading() when petsLoading != null:
return petsLoading();case PetsSuccess() when petsSuccess != null:
return petsSuccess(_that.petsList);case PetsError() when petsError != null:
return petsError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  breedsLoading,required TResult Function( List<BreedModel?>? breedsList)  breedsSuccess,required TResult Function( ErrorHandler errorHandler)  breedsError,required TResult Function()  petsLoading,required TResult Function( List<PetModel?>? petsList)  petsSuccess,required TResult Function( ErrorHandler errorHandler)  petsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case BreedsLoading():
return breedsLoading();case BreedsSuccess():
return breedsSuccess(_that.breedsList);case BreedsError():
return breedsError(_that.errorHandler);case PetsLoading():
return petsLoading();case PetsSuccess():
return petsSuccess(_that.petsList);case PetsError():
return petsError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  breedsLoading,TResult? Function( List<BreedModel?>? breedsList)?  breedsSuccess,TResult? Function( ErrorHandler errorHandler)?  breedsError,TResult? Function()?  petsLoading,TResult? Function( List<PetModel?>? petsList)?  petsSuccess,TResult? Function( ErrorHandler errorHandler)?  petsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case BreedsLoading() when breedsLoading != null:
return breedsLoading();case BreedsSuccess() when breedsSuccess != null:
return breedsSuccess(_that.breedsList);case BreedsError() when breedsError != null:
return breedsError(_that.errorHandler);case PetsLoading() when petsLoading != null:
return petsLoading();case PetsSuccess() when petsSuccess != null:
return petsSuccess(_that.petsList);case PetsError() when petsError != null:
return petsError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class BreedsLoading implements HomeState {
  const BreedsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BreedsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.breedsLoading()';
}


}




/// @nodoc


class BreedsSuccess implements HomeState {
  const BreedsSuccess(final  List<BreedModel?>? breedsList): _breedsList = breedsList;
  

 final  List<BreedModel?>? _breedsList;
 List<BreedModel?>? get breedsList {
  final value = _breedsList;
  if (value == null) return null;
  if (_breedsList is EqualUnmodifiableListView) return _breedsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BreedsSuccessCopyWith<BreedsSuccess> get copyWith => _$BreedsSuccessCopyWithImpl<BreedsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BreedsSuccess&&const DeepCollectionEquality().equals(other._breedsList, _breedsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_breedsList));

@override
String toString() {
  return 'HomeState.breedsSuccess(breedsList: $breedsList)';
}


}

/// @nodoc
abstract mixin class $BreedsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $BreedsSuccessCopyWith(BreedsSuccess value, $Res Function(BreedsSuccess) _then) = _$BreedsSuccessCopyWithImpl;
@useResult
$Res call({
 List<BreedModel?>? breedsList
});




}
/// @nodoc
class _$BreedsSuccessCopyWithImpl<$Res>
    implements $BreedsSuccessCopyWith<$Res> {
  _$BreedsSuccessCopyWithImpl(this._self, this._then);

  final BreedsSuccess _self;
  final $Res Function(BreedsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? breedsList = freezed,}) {
  return _then(BreedsSuccess(
freezed == breedsList ? _self._breedsList : breedsList // ignore: cast_nullable_to_non_nullable
as List<BreedModel?>?,
  ));
}


}

/// @nodoc


class BreedsError implements HomeState {
  const BreedsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BreedsErrorCopyWith<BreedsError> get copyWith => _$BreedsErrorCopyWithImpl<BreedsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BreedsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.breedsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $BreedsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $BreedsErrorCopyWith(BreedsError value, $Res Function(BreedsError) _then) = _$BreedsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$BreedsErrorCopyWithImpl<$Res>
    implements $BreedsErrorCopyWith<$Res> {
  _$BreedsErrorCopyWithImpl(this._self, this._then);

  final BreedsError _self;
  final $Res Function(BreedsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(BreedsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class PetsLoading implements HomeState {
  const PetsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.petsLoading()';
}


}




/// @nodoc


class PetsSuccess implements HomeState {
  const PetsSuccess(final  List<PetModel?>? petsList): _petsList = petsList;
  

 final  List<PetModel?>? _petsList;
 List<PetModel?>? get petsList {
  final value = _petsList;
  if (value == null) return null;
  if (_petsList is EqualUnmodifiableListView) return _petsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetsSuccessCopyWith<PetsSuccess> get copyWith => _$PetsSuccessCopyWithImpl<PetsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetsSuccess&&const DeepCollectionEquality().equals(other._petsList, _petsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_petsList));

@override
String toString() {
  return 'HomeState.petsSuccess(petsList: $petsList)';
}


}

/// @nodoc
abstract mixin class $PetsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $PetsSuccessCopyWith(PetsSuccess value, $Res Function(PetsSuccess) _then) = _$PetsSuccessCopyWithImpl;
@useResult
$Res call({
 List<PetModel?>? petsList
});




}
/// @nodoc
class _$PetsSuccessCopyWithImpl<$Res>
    implements $PetsSuccessCopyWith<$Res> {
  _$PetsSuccessCopyWithImpl(this._self, this._then);

  final PetsSuccess _self;
  final $Res Function(PetsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petsList = freezed,}) {
  return _then(PetsSuccess(
freezed == petsList ? _self._petsList : petsList // ignore: cast_nullable_to_non_nullable
as List<PetModel?>?,
  ));
}


}

/// @nodoc


class PetsError implements HomeState {
  const PetsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetsErrorCopyWith<PetsError> get copyWith => _$PetsErrorCopyWithImpl<PetsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.petsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $PetsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $PetsErrorCopyWith(PetsError value, $Res Function(PetsError) _then) = _$PetsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$PetsErrorCopyWithImpl<$Res>
    implements $PetsErrorCopyWith<$Res> {
  _$PetsErrorCopyWithImpl(this._self, this._then);

  final PetsError _self;
  final $Res Function(PetsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(PetsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
