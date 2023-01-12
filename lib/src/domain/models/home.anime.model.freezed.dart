// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.anime.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeAnime _$HomeAnimeFromJson(Map<String, dynamic> json) {
  return _HomeAnime.fromJson(json);
}

/// @nodoc
mixin _$HomeAnime {
  AnimeModel? get trending => throw _privateConstructorUsedError;
  AnimeModel? get popular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeAnimeCopyWith<HomeAnime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAnimeCopyWith<$Res> {
  factory $HomeAnimeCopyWith(HomeAnime value, $Res Function(HomeAnime) then) =
      _$HomeAnimeCopyWithImpl<$Res, HomeAnime>;
  @useResult
  $Res call({AnimeModel? trending, AnimeModel? popular});

  $AnimeModelCopyWith<$Res>? get trending;
  $AnimeModelCopyWith<$Res>? get popular;
}

/// @nodoc
class _$HomeAnimeCopyWithImpl<$Res, $Val extends HomeAnime>
    implements $HomeAnimeCopyWith<$Res> {
  _$HomeAnimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trending = freezed,
    Object? popular = freezed,
  }) {
    return _then(_value.copyWith(
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as AnimeModel?,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as AnimeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeModelCopyWith<$Res>? get trending {
    if (_value.trending == null) {
      return null;
    }

    return $AnimeModelCopyWith<$Res>(_value.trending!, (value) {
      return _then(_value.copyWith(trending: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeModelCopyWith<$Res>? get popular {
    if (_value.popular == null) {
      return null;
    }

    return $AnimeModelCopyWith<$Res>(_value.popular!, (value) {
      return _then(_value.copyWith(popular: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeAnimeCopyWith<$Res> implements $HomeAnimeCopyWith<$Res> {
  factory _$$_HomeAnimeCopyWith(
          _$_HomeAnime value, $Res Function(_$_HomeAnime) then) =
      __$$_HomeAnimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimeModel? trending, AnimeModel? popular});

  @override
  $AnimeModelCopyWith<$Res>? get trending;
  @override
  $AnimeModelCopyWith<$Res>? get popular;
}

/// @nodoc
class __$$_HomeAnimeCopyWithImpl<$Res>
    extends _$HomeAnimeCopyWithImpl<$Res, _$_HomeAnime>
    implements _$$_HomeAnimeCopyWith<$Res> {
  __$$_HomeAnimeCopyWithImpl(
      _$_HomeAnime _value, $Res Function(_$_HomeAnime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trending = freezed,
    Object? popular = freezed,
  }) {
    return _then(_$_HomeAnime(
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as AnimeModel?,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as AnimeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeAnime implements _HomeAnime {
  const _$_HomeAnime({this.trending, this.popular});

  factory _$_HomeAnime.fromJson(Map<String, dynamic> json) =>
      _$$_HomeAnimeFromJson(json);

  @override
  final AnimeModel? trending;
  @override
  final AnimeModel? popular;

  @override
  String toString() {
    return 'HomeAnime(trending: $trending, popular: $popular)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeAnime &&
            (identical(other.trending, trending) ||
                other.trending == trending) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trending, popular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeAnimeCopyWith<_$_HomeAnime> get copyWith =>
      __$$_HomeAnimeCopyWithImpl<_$_HomeAnime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeAnimeToJson(
      this,
    );
  }
}

abstract class _HomeAnime implements HomeAnime {
  const factory _HomeAnime(
      {final AnimeModel? trending, final AnimeModel? popular}) = _$_HomeAnime;

  factory _HomeAnime.fromJson(Map<String, dynamic> json) =
      _$_HomeAnime.fromJson;

  @override
  AnimeModel? get trending;
  @override
  AnimeModel? get popular;
  @override
  @JsonKey(ignore: true)
  _$$_HomeAnimeCopyWith<_$_HomeAnime> get copyWith =>
      throw _privateConstructorUsedError;
}
