// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guest _$GuestFromJson(Map<String, dynamic> json) {
  return _Guest.fromJson(json);
}

/// @nodoc
mixin _$Guest {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestCopyWith<Guest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestCopyWith<$Res> {
  factory $GuestCopyWith(Guest value, $Res Function(Guest) then) =
      _$GuestCopyWithImpl<$Res, Guest>;
  @useResult
  $Res call(
      {int id,
      String name,
      String surname,
      int age,
      String phone,
      String profession});
}

/// @nodoc
class _$GuestCopyWithImpl<$Res, $Val extends Guest>
    implements $GuestCopyWith<$Res> {
  _$GuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? age = null,
    Object? phone = null,
    Object? profession = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestCopyWith<$Res> implements $GuestCopyWith<$Res> {
  factory _$$_GuestCopyWith(_$_Guest value, $Res Function(_$_Guest) then) =
      __$$_GuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String surname,
      int age,
      String phone,
      String profession});
}

/// @nodoc
class __$$_GuestCopyWithImpl<$Res> extends _$GuestCopyWithImpl<$Res, _$_Guest>
    implements _$$_GuestCopyWith<$Res> {
  __$$_GuestCopyWithImpl(_$_Guest _value, $Res Function(_$_Guest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? age = null,
    Object? phone = null,
    Object? profession = null,
  }) {
    return _then(_$_Guest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Guest with DiagnosticableTreeMixin implements _Guest {
  const _$_Guest(
      {required this.id,
      required this.name,
      required this.surname,
      required this.age,
      required this.phone,
      required this.profession});

  factory _$_Guest.fromJson(Map<String, dynamic> json) =>
      _$$_GuestFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final int age;
  @override
  final String phone;
  @override
  final String profession;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Guest(id: $id, name: $name, surname: $surname, age: $age, phone: $phone, profession: $profession)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Guest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('surname', surname))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('profession', profession));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Guest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profession, profession) ||
                other.profession == profession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, surname, age, phone, profession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestCopyWith<_$_Guest> get copyWith =>
      __$$_GuestCopyWithImpl<_$_Guest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestToJson(
      this,
    );
  }
}

abstract class _Guest implements Guest {
  const factory _Guest(
      {required final int id,
      required final String name,
      required final String surname,
      required final int age,
      required final String phone,
      required final String profession}) = _$_Guest;

  factory _Guest.fromJson(Map<String, dynamic> json) = _$_Guest.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get surname;
  @override
  int get age;
  @override
  String get phone;
  @override
  String get profession;
  @override
  @JsonKey(ignore: true)
  _$$_GuestCopyWith<_$_Guest> get copyWith =>
      throw _privateConstructorUsedError;
}
