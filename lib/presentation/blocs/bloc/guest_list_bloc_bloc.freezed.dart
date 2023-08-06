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
    required TResult Function(int id, Guest guest) updateGuest,
    required TResult Function(int id) deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(int id, Guest guest)? updateGuest,
    TResult? Function(int id)? deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    TResult Function(int id, Guest guest)? updateGuest,
    TResult Function(int id)? deleteGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGuests value) loadGuests,
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(UpdateGuest value) updateGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(UpdateGuest value)? updateGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    TResult Function(UpdateGuest value)? updateGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
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
    required TResult Function(int id, Guest guest) updateGuest,
    required TResult Function(int id) deleteGuest,
  }) {
    return loadGuests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(int id, Guest guest)? updateGuest,
    TResult? Function(int id)? deleteGuest,
  }) {
    return loadGuests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    TResult Function(int id, Guest guest)? updateGuest,
    TResult Function(int id)? deleteGuest,
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
    required TResult Function(UpdateGuest value) updateGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
  }) {
    return loadGuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(UpdateGuest value)? updateGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
  }) {
    return loadGuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    TResult Function(UpdateGuest value)? updateGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
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
    required TResult Function(int id, Guest guest) updateGuest,
    required TResult Function(int id) deleteGuest,
  }) {
    return addGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(int id, Guest guest)? updateGuest,
    TResult? Function(int id)? deleteGuest,
  }) {
    return addGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    TResult Function(int id, Guest guest)? updateGuest,
    TResult Function(int id)? deleteGuest,
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
    required TResult Function(UpdateGuest value) updateGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
  }) {
    return addGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(UpdateGuest value)? updateGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
  }) {
    return addGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    TResult Function(UpdateGuest value)? updateGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
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
abstract class _$$UpdateGuestCopyWith<$Res> {
  factory _$$UpdateGuestCopyWith(
          _$UpdateGuest value, $Res Function(_$UpdateGuest) then) =
      __$$UpdateGuestCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, Guest guest});

  $GuestCopyWith<$Res> get guest;
}

/// @nodoc
class __$$UpdateGuestCopyWithImpl<$Res>
    extends _$GuestListEventCopyWithImpl<$Res, _$UpdateGuest>
    implements _$$UpdateGuestCopyWith<$Res> {
  __$$UpdateGuestCopyWithImpl(
      _$UpdateGuest _value, $Res Function(_$UpdateGuest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? guest = null,
  }) {
    return _then(_$UpdateGuest(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$UpdateGuest implements UpdateGuest {
  const _$UpdateGuest(this.id, this.guest);

  @override
  final int id;
  @override
  final Guest guest;

  @override
  String toString() {
    return 'GuestListEvent.updateGuest(id: $id, guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGuest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGuestCopyWith<_$UpdateGuest> get copyWith =>
      __$$UpdateGuestCopyWithImpl<_$UpdateGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGuests,
    required TResult Function(Guest guest) addGuest,
    required TResult Function(int id, Guest guest) updateGuest,
    required TResult Function(int id) deleteGuest,
  }) {
    return updateGuest(id, guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(int id, Guest guest)? updateGuest,
    TResult? Function(int id)? deleteGuest,
  }) {
    return updateGuest?.call(id, guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    TResult Function(int id, Guest guest)? updateGuest,
    TResult Function(int id)? deleteGuest,
    required TResult orElse(),
  }) {
    if (updateGuest != null) {
      return updateGuest(id, guest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGuests value) loadGuests,
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(UpdateGuest value) updateGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
  }) {
    return updateGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(UpdateGuest value)? updateGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
  }) {
    return updateGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    TResult Function(UpdateGuest value)? updateGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
    required TResult orElse(),
  }) {
    if (updateGuest != null) {
      return updateGuest(this);
    }
    return orElse();
  }
}

abstract class UpdateGuest implements GuestListEvent {
  const factory UpdateGuest(final int id, final Guest guest) = _$UpdateGuest;

  int get id;
  Guest get guest;
  @JsonKey(ignore: true)
  _$$UpdateGuestCopyWith<_$UpdateGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGuestCopyWith<$Res> {
  factory _$$DeleteGuestCopyWith(
          _$DeleteGuest value, $Res Function(_$DeleteGuest) then) =
      __$$DeleteGuestCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
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
    Object? id = null,
  }) {
    return _then(_$DeleteGuest(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteGuest implements DeleteGuest {
  const _$DeleteGuest(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GuestListEvent.deleteGuest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGuest &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGuestCopyWith<_$DeleteGuest> get copyWith =>
      __$$DeleteGuestCopyWithImpl<_$DeleteGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGuests,
    required TResult Function(Guest guest) addGuest,
    required TResult Function(int id, Guest guest) updateGuest,
    required TResult Function(int id) deleteGuest,
  }) {
    return deleteGuest(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGuests,
    TResult? Function(Guest guest)? addGuest,
    TResult? Function(int id, Guest guest)? updateGuest,
    TResult? Function(int id)? deleteGuest,
  }) {
    return deleteGuest?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGuests,
    TResult Function(Guest guest)? addGuest,
    TResult Function(int id, Guest guest)? updateGuest,
    TResult Function(int id)? deleteGuest,
    required TResult orElse(),
  }) {
    if (deleteGuest != null) {
      return deleteGuest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGuests value) loadGuests,
    required TResult Function(AddGuest value) addGuest,
    required TResult Function(UpdateGuest value) updateGuest,
    required TResult Function(DeleteGuest value) deleteGuest,
  }) {
    return deleteGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGuests value)? loadGuests,
    TResult? Function(AddGuest value)? addGuest,
    TResult? Function(UpdateGuest value)? updateGuest,
    TResult? Function(DeleteGuest value)? deleteGuest,
  }) {
    return deleteGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGuests value)? loadGuests,
    TResult Function(AddGuest value)? addGuest,
    TResult Function(UpdateGuest value)? updateGuest,
    TResult Function(DeleteGuest value)? deleteGuest,
    required TResult orElse(),
  }) {
    if (deleteGuest != null) {
      return deleteGuest(this);
    }
    return orElse();
  }
}

abstract class DeleteGuest implements GuestListEvent {
  const factory DeleteGuest(final int id) = _$DeleteGuest;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteGuestCopyWith<_$DeleteGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestListState {
  List<Guest> get guests => throw _privateConstructorUsedError;
  RequestState get status => throw _privateConstructorUsedError;

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
  $Res call({List<Guest> guests, RequestState status});
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
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestState,
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
  $Res call({List<Guest> guests, RequestState status});
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
    Object? status = null,
  }) {
    return _then(_$_GuestListState(
      guests: null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$_GuestListState implements _GuestListState {
  const _$_GuestListState(
      {required final List<Guest> guests, required this.status})
      : _guests = guests;

  final List<Guest> _guests;
  @override
  List<Guest> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  final RequestState status;

  @override
  String toString() {
    return 'GuestListState(guests: $guests, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestListState &&
            const DeepCollectionEquality().equals(other._guests, _guests) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_guests), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestListStateCopyWith<_$_GuestListState> get copyWith =>
      __$$_GuestListStateCopyWithImpl<_$_GuestListState>(this, _$identity);
}

abstract class _GuestListState implements GuestListState {
  const factory _GuestListState(
      {required final List<Guest> guests,
      required final RequestState status}) = _$_GuestListState;

  @override
  List<Guest> get guests;
  @override
  RequestState get status;
  @override
  @JsonKey(ignore: true)
  _$$_GuestListStateCopyWith<_$_GuestListState> get copyWith =>
      throw _privateConstructorUsedError;
}
