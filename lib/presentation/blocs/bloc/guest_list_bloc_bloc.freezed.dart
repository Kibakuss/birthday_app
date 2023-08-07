// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_list_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGuests,
    required TResult Function(Guest guest) addGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGuests value) loadGuests,
    required TResult Function(AddGuest value) addGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListEventCopyWith<$Res> {
  factory $GuestListEventCopyWith(
          GuestListEvent value, $Res Function(GuestListEvent) then) =
      _$GuestListEventCopyWithImpl<$Res, GuestListEvent>;
}

/// @nodoc
class _$GuestListEventCopyWithImpl<$Res, $Val extends GuestListEvent>
    implements $GuestListEventCopyWith<$Res> {
  _$GuestListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadGuestsCopyWith<$Res> {
  factory _$$LoadGuestsCopyWith(
          _$LoadGuests value, $Res Function(_$LoadGuests) then) =
      __$$LoadGuestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGuestsCopyWithImpl<$Res>
    extends _$GuestListEventCopyWithImpl<$Res, _$LoadGuests>
    implements _$$LoadGuestsCopyWith<$Res> {
  __$$LoadGuestsCopyWithImpl(
      _$LoadGuests _value, $Res Function(_$LoadGuests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadGuests implements LoadGuests {
  const _$LoadGuests();

  @override
  String toString() {
    return 'GuestListEvent.loadGuests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGuests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGuests,
    required TResult Function(Guest guest) addGuest,
  }) {
    return loadGuests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
  }) {
    return loadGuests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    required TResult orElse(),
  }) {
    if (loadGuests != null) {
      return loadGuests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGuests value) loadGuests,
    required TResult Function(AddGuest value) addGuest,
  }) {
    return loadGuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
  }) {
    return loadGuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    required TResult orElse(),
  }) {
    if (loadGuests != null) {
      return loadGuests(this);
    }
    return orElse();
  }
}

abstract class LoadGuests implements GuestListEvent {
  const factory LoadGuests() = _$LoadGuests;
}

/// @nodoc
abstract class _$$AddGuestCopyWith<$Res> {
  factory _$$AddGuestCopyWith(
          _$AddGuest value, $Res Function(_$AddGuest) then) =
      __$$AddGuestCopyWithImpl<$Res>;
  @useResult
  $Res call({Guest guest});

  $GuestCopyWith<$Res> get guest;
}

/// @nodoc
class __$$AddGuestCopyWithImpl<$Res>
    extends _$GuestListEventCopyWithImpl<$Res, _$AddGuest>
    implements _$$AddGuestCopyWith<$Res> {
  __$$AddGuestCopyWithImpl(_$AddGuest _value, $Res Function(_$AddGuest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
  }) {
    return _then(_$AddGuest(
      null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as Guest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestCopyWith<$Res> get guest {
    return $GuestCopyWith<$Res>(_value.guest, (value) {
      return _then(_value.copyWith(guest: value));
    });
  }
}

/// @nodoc

class _$AddGuest implements AddGuest {
  const _$AddGuest(this.guest);

  @override
  final Guest guest;

  @override
  String toString() {
    return 'GuestListEvent.addGuest(guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGuest &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGuestCopyWith<_$AddGuest> get copyWith =>
      __$$AddGuestCopyWithImpl<_$AddGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGuests,
    required TResult Function(Guest guest) addGuest,
  }) {
    return addGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
  }) {
    return addGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    required TResult orElse(),
  }) {
    if (addGuest != null) {
      return addGuest(guest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGuests value) loadGuests,
    required TResult Function(AddGuest value) addGuest,
  }) {
    return addGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
  }) {
    return addGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    required TResult orElse(),
  }) {
    if (addGuest != null) {
      return addGuest(this);
    }
    return orElse();
  }
}

abstract class AddGuest implements GuestListEvent {
  const factory AddGuest(final Guest guest) = _$AddGuest;

  Guest get guest;
  @JsonKey(ignore: true)
  _$$AddGuestCopyWith<_$AddGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Guest> guests) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Guest> guests)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Guest> guests)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuestListInitial value) initial,
    required TResult Function(GuestListLoading value) loading,
    required TResult Function(GuestListLoaded value) loaded,
    required TResult Function(GuestListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuestListInitial value)? initial,
    TResult? Function(GuestListLoading value)? loading,
    TResult? Function(GuestListLoaded value)? loaded,
    TResult? Function(GuestListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuestListInitial value)? initial,
    TResult Function(GuestListLoading value)? loading,
    TResult Function(GuestListLoaded value)? loaded,
    TResult Function(GuestListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListStateCopyWith<$Res> {
  factory $GuestListStateCopyWith(
          GuestListState value, $Res Function(GuestListState) then) =
      _$GuestListStateCopyWithImpl<$Res, GuestListState>;
}

/// @nodoc
class _$GuestListStateCopyWithImpl<$Res, $Val extends GuestListState>
    implements $GuestListStateCopyWith<$Res> {
  _$GuestListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GuestListInitialCopyWith<$Res> {
  factory _$$GuestListInitialCopyWith(
          _$GuestListInitial value, $Res Function(_$GuestListInitial) then) =
      __$$GuestListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GuestListInitialCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res, _$GuestListInitial>
    implements _$$GuestListInitialCopyWith<$Res> {
  __$$GuestListInitialCopyWithImpl(
      _$GuestListInitial _value, $Res Function(_$GuestListInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GuestListInitial implements GuestListInitial {
  const _$GuestListInitial();

  @override
  String toString() {
    return 'GuestListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GuestListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Guest> guests) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Guest> guests)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Guest> guests)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuestListInitial value) initial,
    required TResult Function(GuestListLoading value) loading,
    required TResult Function(GuestListLoaded value) loaded,
    required TResult Function(GuestListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuestListInitial value)? initial,
    TResult? Function(GuestListLoading value)? loading,
    TResult? Function(GuestListLoaded value)? loaded,
    TResult? Function(GuestListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuestListInitial value)? initial,
    TResult Function(GuestListLoading value)? loading,
    TResult Function(GuestListLoaded value)? loaded,
    TResult Function(GuestListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GuestListInitial implements GuestListState {
  const factory GuestListInitial() = _$GuestListInitial;
}

/// @nodoc
abstract class _$$GuestListLoadingCopyWith<$Res> {
  factory _$$GuestListLoadingCopyWith(
          _$GuestListLoading value, $Res Function(_$GuestListLoading) then) =
      __$$GuestListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GuestListLoadingCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res, _$GuestListLoading>
    implements _$$GuestListLoadingCopyWith<$Res> {
  __$$GuestListLoadingCopyWithImpl(
      _$GuestListLoading _value, $Res Function(_$GuestListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GuestListLoading implements GuestListLoading {
  const _$GuestListLoading();

  @override
  String toString() {
    return 'GuestListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GuestListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Guest> guests) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Guest> guests)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Guest> guests)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuestListInitial value) initial,
    required TResult Function(GuestListLoading value) loading,
    required TResult Function(GuestListLoaded value) loaded,
    required TResult Function(GuestListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuestListInitial value)? initial,
    TResult? Function(GuestListLoading value)? loading,
    TResult? Function(GuestListLoaded value)? loaded,
    TResult? Function(GuestListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuestListInitial value)? initial,
    TResult Function(GuestListLoading value)? loading,
    TResult Function(GuestListLoaded value)? loaded,
    TResult Function(GuestListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GuestListLoading implements GuestListState {
  const factory GuestListLoading() = _$GuestListLoading;
}

/// @nodoc
abstract class _$$GuestListLoadedCopyWith<$Res> {
  factory _$$GuestListLoadedCopyWith(
          _$GuestListLoaded value, $Res Function(_$GuestListLoaded) then) =
      __$$GuestListLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Guest> guests});
}

/// @nodoc
class __$$GuestListLoadedCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res, _$GuestListLoaded>
    implements _$$GuestListLoadedCopyWith<$Res> {
  __$$GuestListLoadedCopyWithImpl(
      _$GuestListLoaded _value, $Res Function(_$GuestListLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guests = null,
  }) {
    return _then(_$GuestListLoaded(
      null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ));
  }
}

/// @nodoc

class _$GuestListLoaded implements GuestListLoaded {
  const _$GuestListLoaded(final List<Guest> guests) : _guests = guests;

  final List<Guest> _guests;
  @override
  List<Guest> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  String toString() {
    return 'GuestListState.loaded(guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestListLoaded &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_guests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestListLoadedCopyWith<_$GuestListLoaded> get copyWith =>
      __$$GuestListLoadedCopyWithImpl<_$GuestListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Guest> guests) loaded,
    required TResult Function() error,
  }) {
    return loaded(guests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Guest> guests)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(guests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Guest> guests)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(guests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuestListInitial value) initial,
    required TResult Function(GuestListLoading value) loading,
    required TResult Function(GuestListLoaded value) loaded,
    required TResult Function(GuestListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuestListInitial value)? initial,
    TResult? Function(GuestListLoading value)? loading,
    TResult? Function(GuestListLoaded value)? loaded,
    TResult? Function(GuestListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuestListInitial value)? initial,
    TResult Function(GuestListLoading value)? loading,
    TResult Function(GuestListLoaded value)? loaded,
    TResult Function(GuestListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GuestListLoaded implements GuestListState {
  const factory GuestListLoaded(final List<Guest> guests) = _$GuestListLoaded;

  List<Guest> get guests;
  @JsonKey(ignore: true)
  _$$GuestListLoadedCopyWith<_$GuestListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuestListErrorCopyWith<$Res> {
  factory _$$GuestListErrorCopyWith(
          _$GuestListError value, $Res Function(_$GuestListError) then) =
      __$$GuestListErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GuestListErrorCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res, _$GuestListError>
    implements _$$GuestListErrorCopyWith<$Res> {
  __$$GuestListErrorCopyWithImpl(
      _$GuestListError _value, $Res Function(_$GuestListError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GuestListError implements GuestListError {
  const _$GuestListError();

  @override
  String toString() {
    return 'GuestListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GuestListError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Guest> guests) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Guest> guests)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Guest> guests)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuestListInitial value) initial,
    required TResult Function(GuestListLoading value) loading,
    required TResult Function(GuestListLoaded value) loaded,
    required TResult Function(GuestListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuestListInitial value)? initial,
    TResult? Function(GuestListLoading value)? loading,
    TResult? Function(GuestListLoaded value)? loaded,
    TResult? Function(GuestListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuestListInitial value)? initial,
    TResult Function(GuestListLoading value)? loading,
    TResult Function(GuestListLoaded value)? loaded,
    TResult Function(GuestListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GuestListError implements GuestListState {
  const factory GuestListError() = _$GuestListError;
}
