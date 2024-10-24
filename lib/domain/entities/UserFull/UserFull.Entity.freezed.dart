// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserFull.Entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFullEntity _$UserFullEntityFromJson(Map<String, dynamic> json) {
  return _UserFullEntity.fromJson(json);
}

/// @nodoc
mixin _$UserFullEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  DateTime? get registerDate => throw _privateConstructorUsedError;
  DateTime? get updatedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFullEntityCopyWith<UserFullEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFullEntityCopyWith<$Res> {
  factory $UserFullEntityCopyWith(
          UserFullEntity value, $Res Function(UserFullEntity) then) =
      _$UserFullEntityCopyWithImpl<$Res, UserFullEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture,
      String gender,
      String email,
      Location? location,
      DateTime? dateOfBirth,
      String? phone,
      DateTime? registerDate,
      DateTime? updatedDate});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$UserFullEntityCopyWithImpl<$Res, $Val extends UserFullEntity>
    implements $UserFullEntityCopyWith<$Res> {
  _$UserFullEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? picture = null,
    Object? gender = null,
    Object? email = null,
    Object? location = freezed,
    Object? dateOfBirth = freezed,
    Object? phone = freezed,
    Object? registerDate = freezed,
    Object? updatedDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDate: freezed == registerDate
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserFullEntityImplCopyWith<$Res>
    implements $UserFullEntityCopyWith<$Res> {
  factory _$$UserFullEntityImplCopyWith(_$UserFullEntityImpl value,
          $Res Function(_$UserFullEntityImpl) then) =
      __$$UserFullEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture,
      String gender,
      String email,
      Location? location,
      DateTime? dateOfBirth,
      String? phone,
      DateTime? registerDate,
      DateTime? updatedDate});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$UserFullEntityImplCopyWithImpl<$Res>
    extends _$UserFullEntityCopyWithImpl<$Res, _$UserFullEntityImpl>
    implements _$$UserFullEntityImplCopyWith<$Res> {
  __$$UserFullEntityImplCopyWithImpl(
      _$UserFullEntityImpl _value, $Res Function(_$UserFullEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? picture = null,
    Object? gender = null,
    Object? email = null,
    Object? location = freezed,
    Object? dateOfBirth = freezed,
    Object? phone = freezed,
    Object? registerDate = freezed,
    Object? updatedDate = freezed,
  }) {
    return _then(_$UserFullEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDate: freezed == registerDate
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFullEntityImpl implements _UserFullEntity {
  const _$UserFullEntityImpl(
      {required this.id,
      required this.title,
      required this.firstName,
      required this.lastName,
      required this.picture,
      required this.gender,
      required this.email,
      this.location,
      this.dateOfBirth,
      this.phone,
      this.registerDate,
      this.updatedDate});

  factory _$UserFullEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFullEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String picture;
  @override
  final String gender;
  @override
  final String email;
  @override
  final Location? location;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? phone;
  @override
  final DateTime? registerDate;
  @override
  final DateTime? updatedDate;

  @override
  String toString() {
    return 'UserFullEntity(id: $id, title: $title, firstName: $firstName, lastName: $lastName, picture: $picture, gender: $gender, email: $email, location: $location, dateOfBirth: $dateOfBirth, phone: $phone, registerDate: $registerDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFullEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.registerDate, registerDate) ||
                other.registerDate == registerDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      firstName,
      lastName,
      picture,
      gender,
      email,
      location,
      dateOfBirth,
      phone,
      registerDate,
      updatedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFullEntityImplCopyWith<_$UserFullEntityImpl> get copyWith =>
      __$$UserFullEntityImplCopyWithImpl<_$UserFullEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFullEntityImplToJson(
      this,
    );
  }
}

abstract class _UserFullEntity implements UserFullEntity {
  const factory _UserFullEntity(
      {required final String id,
      required final String title,
      required final String firstName,
      required final String lastName,
      required final String picture,
      required final String gender,
      required final String email,
      final Location? location,
      final DateTime? dateOfBirth,
      final String? phone,
      final DateTime? registerDate,
      final DateTime? updatedDate}) = _$UserFullEntityImpl;

  factory _UserFullEntity.fromJson(Map<String, dynamic> json) =
      _$UserFullEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get picture;
  @override
  String get gender;
  @override
  String get email;
  @override
  Location? get location;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get phone;
  @override
  DateTime? get registerDate;
  @override
  DateTime? get updatedDate;
  @override
  @JsonKey(ignore: true)
  _$$UserFullEntityImplCopyWith<_$UserFullEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
