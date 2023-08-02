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
  Guest get guest => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Guest guest) addGuest,
    required TResult Function(Guest guest) deleteGuest,
    required TResult Function(Guest guest) editGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(Guest guest)? deleteGuest,
    TResult? Function(Guest guest)? editGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Guest guest)? addGuest,
    TResult Function(Guest guest)? deleteGuest,
    TResult Function(Guest guest)? editGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
    required TResult Function(EditGuest value) editGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
    TResult? Function(EditGuest value)? editGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddGuest value)? addGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
    TResult Function(EditGuest value)? editGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestListEventCopyWith<GuestListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListEventCopyWith<$Res> {
  factory $GuestListEventCopyWith(
          GuestListEvent value, $Res Function(GuestListEvent) then) =
      _$GuestListEventCopyWithImpl<$Res, GuestListEvent>;
  @useResult
  $Res call({Guest guest});

  $GuestCopyWith<$Res> get guest;
}

/// @nodoc
class _$GuestListEventCopyWithImpl<$Res, $Val extends GuestListEvent>
    implements $GuestListEventCopyWith<$Res> {
  _$GuestListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
  }) {
    return _then(_value.copyWith(
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as Guest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestCopyWith<$Res> get guest {
    return $GuestCopyWith<$Res>(_value.guest, (value) {
      return _then(_value.copyWith(guest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddGuestCopyWith<$Res>
    implements $GuestListEventCopyWith<$Res> {
  factory _$$AddGuestCopyWith(
          _$AddGuest value, $Res Function(_$AddGuest) then) =
      __$$AddGuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Guest guest});

  @override
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
    required TResult Function(Guest guest) addGuest,
    required TResult Function(Guest guest) deleteGuest,
    required TResult Function(Guest guest) editGuest,
  }) {
    return addGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(Guest guest)? deleteGuest,
    TResult? Function(Guest guest)? editGuest,
  }) {
    return addGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Guest guest)? addGuest,
    TResult Function(Guest guest)? deleteGuest,
    TResult Function(Guest guest)? editGuest,
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
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
    required TResult Function(EditGuest value) editGuest,
  }) {
    return addGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
    TResult? Function(EditGuest value)? editGuest,
  }) {
    return addGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddGuest value)? addGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
    TResult Function(EditGuest value)? editGuest,
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

  @override
  Guest get guest;
  @override
  @JsonKey(ignore: true)
  _$$AddGuestCopyWith<_$AddGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGuestCopyWith<$Res>
    implements $GuestListEventCopyWith<$Res> {
  factory _$$DeleteGuestCopyWith(
          _$DeleteGuest value, $Res Function(_$DeleteGuest) then) =
      __$$DeleteGuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Guest guest});

  @override
  $GuestCopyWith<$Res> get guest;
}

/// @nodoc
class __$$DeleteGuestCopyWithImpl<$Res>
    extends _$GuestListEventCopyWithImpl<$Res, _$DeleteGuest>
    implements _$$DeleteGuestCopyWith<$Res> {
  __$$DeleteGuestCopyWithImpl(
      _$DeleteGuest _value, $Res Function(_$DeleteGuest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
  }) {
    return _then(_$DeleteGuest(
      null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as Guest,
    ));
  }
}

/// @nodoc

class _$DeleteGuest implements DeleteGuest {
  const _$DeleteGuest(this.guest);

  @override
  final Guest guest;

  @override
  String toString() {
    return 'GuestListEvent.deleteGuest(guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGuest &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGuestCopyWith<_$DeleteGuest> get copyWith =>
      __$$DeleteGuestCopyWithImpl<_$DeleteGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Guest guest) addGuest,
    required TResult Function(Guest guest) deleteGuest,
    required TResult Function(Guest guest) editGuest,
  }) {
    return deleteGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(Guest guest)? deleteGuest,
    TResult? Function(Guest guest)? editGuest,
  }) {
    return deleteGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Guest guest)? addGuest,
    TResult Function(Guest guest)? deleteGuest,
    TResult Function(Guest guest)? editGuest,
    required TResult orElse(),
  }) {
    if (deleteGuest != null) {
      return deleteGuest(guest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
    required TResult Function(EditGuest value) editGuest,
  }) {
    return deleteGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
    TResult? Function(EditGuest value)? editGuest,
  }) {
    return deleteGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddGuest value)? addGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
    TResult Function(EditGuest value)? editGuest,
    required TResult orElse(),
  }) {
    if (deleteGuest != null) {
      return deleteGuest(this);
    }
    return orElse();
  }
}

abstract class DeleteGuest implements GuestListEvent {
  const factory DeleteGuest(final Guest guest) = _$DeleteGuest;

  @override
  Guest get guest;
  @override
  @JsonKey(ignore: true)
  _$$DeleteGuestCopyWith<_$DeleteGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditGuestCopyWith<$Res>
    implements $GuestListEventCopyWith<$Res> {
  factory _$$EditGuestCopyWith(
          _$EditGuest value, $Res Function(_$EditGuest) then) =
      __$$EditGuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Guest guest});

  @override
  $GuestCopyWith<$Res> get guest;
}

/// @nodoc
class __$$EditGuestCopyWithImpl<$Res>
    extends _$GuestListEventCopyWithImpl<$Res, _$EditGuest>
    implements _$$EditGuestCopyWith<$Res> {
  __$$EditGuestCopyWithImpl(
      _$EditGuest _value, $Res Function(_$EditGuest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
  }) {
    return _then(_$EditGuest(
      null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as Guest,
    ));
  }
}

/// @nodoc

class _$EditGuest implements EditGuest {
  const _$EditGuest(this.guest);

  @override
  final Guest guest;

  @override
  String toString() {
    return 'GuestListEvent.editGuest(guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditGuest &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditGuestCopyWith<_$EditGuest> get copyWith =>
      __$$EditGuestCopyWithImpl<_$EditGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Guest guest) addGuest,
    required TResult Function(Guest guest) deleteGuest,
    required TResult Function(Guest guest) editGuest,
  }) {
    return editGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(Guest guest)? deleteGuest,
    TResult? Function(Guest guest)? editGuest,
  }) {
    return editGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Guest guest)? addGuest,
    TResult Function(Guest guest)? deleteGuest,
    TResult Function(Guest guest)? editGuest,
    required TResult orElse(),
  }) {
    if (editGuest != null) {
      return editGuest(guest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
    required TResult Function(EditGuest value) editGuest,
  }) {
    return editGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
    TResult? Function(EditGuest value)? editGuest,
  }) {
    return editGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddGuest value)? addGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
    TResult Function(EditGuest value)? editGuest,
    required TResult orElse(),
  }) {
    if (editGuest != null) {
      return editGuest(this);
    }
    return orElse();
  }
}

abstract class EditGuest implements GuestListEvent {
  const factory EditGuest(final Guest guest) = _$EditGuest;

  @override
  Guest get guest;
  @override
  @JsonKey(ignore: true)
  _$$EditGuestCopyWith<_$EditGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestListState {
  List<Guest> get guests => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestListStateCopyWith<GuestListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListStateCopyWith<$Res> {
  factory $GuestListStateCopyWith(
          GuestListState value, $Res Function(GuestListState) then) =
      _$GuestListStateCopyWithImpl<$Res, GuestListState>;
  @useResult
  $Res call({List<Guest> guests});
}

/// @nodoc
class _$GuestListStateCopyWithImpl<$Res, $Val extends GuestListState>
    implements $GuestListStateCopyWith<$Res> {
  _$GuestListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guests = null,
  }) {
    return _then(_value.copyWith(
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestListStateCopyWith<$Res>
    implements $GuestListStateCopyWith<$Res> {
  factory _$$_GuestListStateCopyWith(
          _$_GuestListState value, $Res Function(_$_GuestListState) then) =
      __$$_GuestListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Guest> guests});
}

/// @nodoc
class __$$_GuestListStateCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res, _$_GuestListState>
    implements _$$_GuestListStateCopyWith<$Res> {
  __$$_GuestListStateCopyWithImpl(
      _$_GuestListState _value, $Res Function(_$_GuestListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guests = null,
  }) {
    return _then(_$_GuestListState(
      guests: null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ));
  }
}

/// @nodoc

class _$_GuestListState implements _GuestListState {
  const _$_GuestListState({required final List<Guest> guests})
      : _guests = guests;

  final List<Guest> _guests;
  @override
  List<Guest> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  String toString() {
    return 'GuestListState(guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestListState &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_guests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestListStateCopyWith<_$_GuestListState> get copyWith =>
      __$$_GuestListStateCopyWithImpl<_$_GuestListState>(this, _$identity);
}

abstract class _GuestListState implements GuestListState {
  const factory _GuestListState({required final List<Guest> guests}) =
      _$_GuestListState;

  @override
  List<Guest> get guests;
  @override
  @JsonKey(ignore: true)
  _$$_GuestListStateCopyWith<_$_GuestListState> get copyWith =>
      throw _privateConstructorUsedError;
}
