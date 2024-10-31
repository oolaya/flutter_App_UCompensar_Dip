// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Post.Create.Entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCreateEntity _$PostCreateEntityFromJson(Map<String, dynamic> json) {
  return _PostCreateEntity.fromJson(json);
}

/// @nodoc
mixin _$PostCreateEntity {
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;

  /// Serializes this PostCreateEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCreateEntityCopyWith<PostCreateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCreateEntityCopyWith<$Res> {
  factory $PostCreateEntityCopyWith(
          PostCreateEntity value, $Res Function(PostCreateEntity) then) =
      _$PostCreateEntityCopyWithImpl<$Res, PostCreateEntity>;
  @useResult
  $Res call(
      {String text, String image, int likes, List<String> tags, String owner});
}

/// @nodoc
class _$PostCreateEntityCopyWithImpl<$Res, $Val extends PostCreateEntity>
    implements $PostCreateEntityCopyWith<$Res> {
  _$PostCreateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
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
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCreateEntityImplCopyWith<$Res>
    implements $PostCreateEntityCopyWith<$Res> {
  factory _$$PostCreateEntityImplCopyWith(_$PostCreateEntityImpl value,
          $Res Function(_$PostCreateEntityImpl) then) =
      __$$PostCreateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text, String image, int likes, List<String> tags, String owner});
}

/// @nodoc
class __$$PostCreateEntityImplCopyWithImpl<$Res>
    extends _$PostCreateEntityCopyWithImpl<$Res, _$PostCreateEntityImpl>
    implements _$$PostCreateEntityImplCopyWith<$Res> {
  __$$PostCreateEntityImplCopyWithImpl(_$PostCreateEntityImpl _value,
      $Res Function(_$PostCreateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? owner = null,
  }) {
    return _then(_$PostCreateEntityImpl(
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
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCreateEntityImpl implements _PostCreateEntity {
  const _$PostCreateEntityImpl(
      {required this.text,
      required this.image,
      this.likes = 0,
      required final List<String> tags,
      required this.owner})
      : _tags = tags;

  factory _$PostCreateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCreateEntityImplFromJson(json);

  @override
  final String text;
  @override
  final String image;
  @override
  @JsonKey()
  final int likes;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String owner;

  @override
  String toString() {
    return 'PostCreateEntity(text: $text, image: $image, likes: $likes, tags: $tags, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreateEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image, likes,
      const DeepCollectionEquality().hash(_tags), owner);

  /// Create a copy of PostCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreateEntityImplCopyWith<_$PostCreateEntityImpl> get copyWith =>
      __$$PostCreateEntityImplCopyWithImpl<_$PostCreateEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCreateEntityImplToJson(
      this,
    );
  }
}

abstract class _PostCreateEntity implements PostCreateEntity {
  const factory _PostCreateEntity(
      {required final String text,
      required final String image,
      final int likes,
      required final List<String> tags,
      required final String owner}) = _$PostCreateEntityImpl;

  factory _PostCreateEntity.fromJson(Map<String, dynamic> json) =
      _$PostCreateEntityImpl.fromJson;

  @override
  String get text;
  @override
  String get image;
  @override
  int get likes;
  @override
  List<String> get tags;
  @override
  String get owner;

  /// Create a copy of PostCreateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCreateEntityImplCopyWith<_$PostCreateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
