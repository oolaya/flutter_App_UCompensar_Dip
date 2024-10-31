// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PostPreview.Entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPreviewEntity _$PostPreviewEntityFromJson(Map<String, dynamic> json) {
  return _PostPreviewEntity.fromJson(json);
}

/// @nodoc
mixin _$PostPreviewEntity {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get publishDate => throw _privateConstructorUsedError;
  UserEntity get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostPreviewEntityCopyWith<PostPreviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPreviewEntityCopyWith<$Res> {
  factory $PostPreviewEntityCopyWith(
          PostPreviewEntity value, $Res Function(PostPreviewEntity) then) =
      _$PostPreviewEntityCopyWithImpl<$Res, PostPreviewEntity>;
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      int likes,
      List<String> tags,
      String publishDate,
      UserEntity owner});

  $UserEntityCopyWith<$Res> get owner;
}

/// @nodoc
class _$PostPreviewEntityCopyWithImpl<$Res, $Val extends PostPreviewEntity>
    implements $PostPreviewEntityCopyWith<$Res> {
  _$PostPreviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? publishDate = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get owner {
    return $UserEntityCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostPreviewEntityImplCopyWith<$Res>
    implements $PostPreviewEntityCopyWith<$Res> {
  factory _$$PostPreviewEntityImplCopyWith(_$PostPreviewEntityImpl value,
          $Res Function(_$PostPreviewEntityImpl) then) =
      __$$PostPreviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      int likes,
      List<String> tags,
      String publishDate,
      UserEntity owner});

  @override
  $UserEntityCopyWith<$Res> get owner;
}

/// @nodoc
class __$$PostPreviewEntityImplCopyWithImpl<$Res>
    extends _$PostPreviewEntityCopyWithImpl<$Res, _$PostPreviewEntityImpl>
    implements _$$PostPreviewEntityImplCopyWith<$Res> {
  __$$PostPreviewEntityImplCopyWithImpl(_$PostPreviewEntityImpl _value,
      $Res Function(_$PostPreviewEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? publishDate = null,
    Object? owner = null,
  }) {
    return _then(_$PostPreviewEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPreviewEntityImpl implements _PostPreviewEntity {
  const _$PostPreviewEntityImpl(
      {required this.id,
      required this.text,
      required this.image,
      required this.likes,
      required final List<String> tags,
      required this.publishDate,
      required this.owner})
      : _tags = tags;

  factory _$PostPreviewEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPreviewEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String image;
  @override
  final int likes;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String publishDate;
  @override
  final UserEntity owner;

  @override
  String toString() {
    return 'PostPreviewEntity(id: $id, text: $text, image: $image, likes: $likes, tags: $tags, publishDate: $publishDate, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPreviewEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, image, likes,
      const DeepCollectionEquality().hash(_tags), publishDate, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPreviewEntityImplCopyWith<_$PostPreviewEntityImpl> get copyWith =>
      __$$PostPreviewEntityImplCopyWithImpl<_$PostPreviewEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPreviewEntityImplToJson(
      this,
    );
  }
}

abstract class _PostPreviewEntity implements PostPreviewEntity {
  const factory _PostPreviewEntity(
      {required final String id,
      required final String text,
      required final String image,
      required final int likes,
      required final List<String> tags,
      required final String publishDate,
      required final UserEntity owner}) = _$PostPreviewEntityImpl;

  factory _PostPreviewEntity.fromJson(Map<String, dynamic> json) =
      _$PostPreviewEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get image;
  @override
  int get likes;
  @override
  List<String> get tags;
  @override
  String get publishDate;
  @override
  UserEntity get owner;
  @override
  @JsonKey(ignore: true)
  _$$PostPreviewEntityImplCopyWith<_$PostPreviewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
