// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) {
  return _AnimeModel.fromJson(json);
}

/// @nodoc
mixin _$AnimeModel {
  int? get currentPage => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;
  List<AnimeResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeModelCopyWith<AnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeModelCopyWith<$Res> {
  factory $AnimeModelCopyWith(
          AnimeModel value, $Res Function(AnimeModel) then) =
      _$AnimeModelCopyWithImpl<$Res, AnimeModel>;
  @useResult
  $Res call({int? currentPage, bool? hasNextPage, List<AnimeResults>? results});
}

/// @nodoc
class _$AnimeModelCopyWithImpl<$Res, $Val extends AnimeModel>
    implements $AnimeModelCopyWith<$Res> {
  _$AnimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasNextPage = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AnimeResults>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeModelCopyWith<$Res>
    implements $AnimeModelCopyWith<$Res> {
  factory _$$_AnimeModelCopyWith(
          _$_AnimeModel value, $Res Function(_$_AnimeModel) then) =
      __$$_AnimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentPage, bool? hasNextPage, List<AnimeResults>? results});
}

/// @nodoc
class __$$_AnimeModelCopyWithImpl<$Res>
    extends _$AnimeModelCopyWithImpl<$Res, _$_AnimeModel>
    implements _$$_AnimeModelCopyWith<$Res> {
  __$$_AnimeModelCopyWithImpl(
      _$_AnimeModel _value, $Res Function(_$_AnimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasNextPage = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_AnimeModel(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AnimeResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeModel implements _AnimeModel {
  const _$_AnimeModel(
      {this.currentPage, this.hasNextPage, final List<AnimeResults>? results})
      : _results = results;

  factory _$_AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeModelFromJson(json);

  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;
  final List<AnimeResults>? _results;
  @override
  List<AnimeResults>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnimeModel(currentPage: $currentPage, hasNextPage: $hasNextPage, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeModel &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, hasNextPage,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeModelCopyWith<_$_AnimeModel> get copyWith =>
      __$$_AnimeModelCopyWithImpl<_$_AnimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeModelToJson(
      this,
    );
  }
}

abstract class _AnimeModel implements AnimeModel {
  const factory _AnimeModel(
      {final int? currentPage,
      final bool? hasNextPage,
      final List<AnimeResults>? results}) = _$_AnimeModel;

  factory _AnimeModel.fromJson(Map<String, dynamic> json) =
      _$_AnimeModel.fromJson;

  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  @override
  List<AnimeResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeModelCopyWith<_$_AnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeResults _$AnimeResultsFromJson(Map<String, dynamic> json) {
  return _AnimeResults.fromJson(json);
}

/// @nodoc
mixin _$AnimeResults {
  String get id => throw _privateConstructorUsedError;
  int? get malId => throw _privateConstructorUsedError;
  AnimeTitle? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  AnimeTrailer? get trailer => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  int? get releaseDate => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  int? get totalEpisodes => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeResultsCopyWith<AnimeResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeResultsCopyWith<$Res> {
  factory $AnimeResultsCopyWith(
          AnimeResults value, $Res Function(AnimeResults) then) =
      _$AnimeResultsCopyWithImpl<$Res, AnimeResults>;
  @useResult
  $Res call(
      {String id,
      int? malId,
      AnimeTitle? title,
      String? image,
      AnimeTrailer? trailer,
      String? description,
      String? status,
      String? cover,
      int? rating,
      int? releaseDate,
      List<String>? genres,
      int? totalEpisodes,
      int? duration,
      String? type});

  $AnimeTitleCopyWith<$Res>? get title;
  $AnimeTrailerCopyWith<$Res>? get trailer;
}

/// @nodoc
class _$AnimeResultsCopyWithImpl<$Res, $Val extends AnimeResults>
    implements $AnimeResultsCopyWith<$Res> {
  _$AnimeResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? malId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? trailer = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? cover = freezed,
    Object? rating = freezed,
    Object? releaseDate = freezed,
    Object? genres = freezed,
    Object? totalEpisodes = freezed,
    Object? duration = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnimeTitle?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as AnimeTrailer?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      totalEpisodes: freezed == totalEpisodes
          ? _value.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeTitleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $AnimeTitleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeTrailerCopyWith<$Res>? get trailer {
    if (_value.trailer == null) {
      return null;
    }

    return $AnimeTrailerCopyWith<$Res>(_value.trailer!, (value) {
      return _then(_value.copyWith(trailer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeResultsCopyWith<$Res>
    implements $AnimeResultsCopyWith<$Res> {
  factory _$$_AnimeResultsCopyWith(
          _$_AnimeResults value, $Res Function(_$_AnimeResults) then) =
      __$$_AnimeResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? malId,
      AnimeTitle? title,
      String? image,
      AnimeTrailer? trailer,
      String? description,
      String? status,
      String? cover,
      int? rating,
      int? releaseDate,
      List<String>? genres,
      int? totalEpisodes,
      int? duration,
      String? type});

  @override
  $AnimeTitleCopyWith<$Res>? get title;
  @override
  $AnimeTrailerCopyWith<$Res>? get trailer;
}

/// @nodoc
class __$$_AnimeResultsCopyWithImpl<$Res>
    extends _$AnimeResultsCopyWithImpl<$Res, _$_AnimeResults>
    implements _$$_AnimeResultsCopyWith<$Res> {
  __$$_AnimeResultsCopyWithImpl(
      _$_AnimeResults _value, $Res Function(_$_AnimeResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? malId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? trailer = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? cover = freezed,
    Object? rating = freezed,
    Object? releaseDate = freezed,
    Object? genres = freezed,
    Object? totalEpisodes = freezed,
    Object? duration = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_AnimeResults(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnimeTitle?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as AnimeTrailer?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      totalEpisodes: freezed == totalEpisodes
          ? _value.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeResults implements _AnimeResults {
  const _$_AnimeResults(
      {required this.id,
      this.malId,
      this.title,
      this.image,
      this.trailer,
      this.description,
      this.status,
      this.cover,
      this.rating,
      this.releaseDate,
      final List<String>? genres,
      this.totalEpisodes,
      this.duration,
      this.type})
      : _genres = genres;

  factory _$_AnimeResults.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeResultsFromJson(json);

  @override
  final String id;
  @override
  final int? malId;
  @override
  final AnimeTitle? title;
  @override
  final String? image;
  @override
  final AnimeTrailer? trailer;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final String? cover;
  @override
  final int? rating;
  @override
  final int? releaseDate;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalEpisodes;
  @override
  final int? duration;
  @override
  final String? type;

  @override
  String toString() {
    return 'AnimeResults(id: $id, malId: $malId, title: $title, image: $image, trailer: $trailer, description: $description, status: $status, cover: $cover, rating: $rating, releaseDate: $releaseDate, genres: $genres, totalEpisodes: $totalEpisodes, duration: $duration, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeResults &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.trailer, trailer) || other.trailer == trailer) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                other.totalEpisodes == totalEpisodes) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      malId,
      title,
      image,
      trailer,
      description,
      status,
      cover,
      rating,
      releaseDate,
      const DeepCollectionEquality().hash(_genres),
      totalEpisodes,
      duration,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeResultsCopyWith<_$_AnimeResults> get copyWith =>
      __$$_AnimeResultsCopyWithImpl<_$_AnimeResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeResultsToJson(
      this,
    );
  }
}

abstract class _AnimeResults implements AnimeResults {
  const factory _AnimeResults(
      {required final String id,
      final int? malId,
      final AnimeTitle? title,
      final String? image,
      final AnimeTrailer? trailer,
      final String? description,
      final String? status,
      final String? cover,
      final int? rating,
      final int? releaseDate,
      final List<String>? genres,
      final int? totalEpisodes,
      final int? duration,
      final String? type}) = _$_AnimeResults;

  factory _AnimeResults.fromJson(Map<String, dynamic> json) =
      _$_AnimeResults.fromJson;

  @override
  String get id;
  @override
  int? get malId;
  @override
  AnimeTitle? get title;
  @override
  String? get image;
  @override
  AnimeTrailer? get trailer;
  @override
  String? get description;
  @override
  String? get status;
  @override
  String? get cover;
  @override
  int? get rating;
  @override
  int? get releaseDate;
  @override
  List<String>? get genres;
  @override
  int? get totalEpisodes;
  @override
  int? get duration;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeResultsCopyWith<_$_AnimeResults> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeTitle _$AnimeTitleFromJson(Map<String, dynamic> json) {
  return _AnimeTitle.fromJson(json);
}

/// @nodoc
mixin _$AnimeTitle {
  String? get romaji => throw _privateConstructorUsedError;
  String? get english => throw _privateConstructorUsedError;
  String? get native => throw _privateConstructorUsedError;
  String? get userPreferred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeTitleCopyWith<AnimeTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeTitleCopyWith<$Res> {
  factory $AnimeTitleCopyWith(
          AnimeTitle value, $Res Function(AnimeTitle) then) =
      _$AnimeTitleCopyWithImpl<$Res, AnimeTitle>;
  @useResult
  $Res call(
      {String? romaji, String? english, String? native, String? userPreferred});
}

/// @nodoc
class _$AnimeTitleCopyWithImpl<$Res, $Val extends AnimeTitle>
    implements $AnimeTitleCopyWith<$Res> {
  _$AnimeTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? romaji = freezed,
    Object? english = freezed,
    Object? native = freezed,
    Object? userPreferred = freezed,
  }) {
    return _then(_value.copyWith(
      romaji: freezed == romaji
          ? _value.romaji
          : romaji // ignore: cast_nullable_to_non_nullable
              as String?,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String?,
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      userPreferred: freezed == userPreferred
          ? _value.userPreferred
          : userPreferred // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeTitleCopyWith<$Res>
    implements $AnimeTitleCopyWith<$Res> {
  factory _$$_AnimeTitleCopyWith(
          _$_AnimeTitle value, $Res Function(_$_AnimeTitle) then) =
      __$$_AnimeTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? romaji, String? english, String? native, String? userPreferred});
}

/// @nodoc
class __$$_AnimeTitleCopyWithImpl<$Res>
    extends _$AnimeTitleCopyWithImpl<$Res, _$_AnimeTitle>
    implements _$$_AnimeTitleCopyWith<$Res> {
  __$$_AnimeTitleCopyWithImpl(
      _$_AnimeTitle _value, $Res Function(_$_AnimeTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? romaji = freezed,
    Object? english = freezed,
    Object? native = freezed,
    Object? userPreferred = freezed,
  }) {
    return _then(_$_AnimeTitle(
      romaji: freezed == romaji
          ? _value.romaji
          : romaji // ignore: cast_nullable_to_non_nullable
              as String?,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String?,
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      userPreferred: freezed == userPreferred
          ? _value.userPreferred
          : userPreferred // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeTitle implements _AnimeTitle {
  const _$_AnimeTitle(
      {this.romaji, this.english, this.native, this.userPreferred});

  factory _$_AnimeTitle.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeTitleFromJson(json);

  @override
  final String? romaji;
  @override
  final String? english;
  @override
  final String? native;
  @override
  final String? userPreferred;

  @override
  String toString() {
    return 'AnimeTitle(romaji: $romaji, english: $english, native: $native, userPreferred: $userPreferred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeTitle &&
            (identical(other.romaji, romaji) || other.romaji == romaji) &&
            (identical(other.english, english) || other.english == english) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.userPreferred, userPreferred) ||
                other.userPreferred == userPreferred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, romaji, english, native, userPreferred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeTitleCopyWith<_$_AnimeTitle> get copyWith =>
      __$$_AnimeTitleCopyWithImpl<_$_AnimeTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeTitleToJson(
      this,
    );
  }
}

abstract class _AnimeTitle implements AnimeTitle {
  const factory _AnimeTitle(
      {final String? romaji,
      final String? english,
      final String? native,
      final String? userPreferred}) = _$_AnimeTitle;

  factory _AnimeTitle.fromJson(Map<String, dynamic> json) =
      _$_AnimeTitle.fromJson;

  @override
  String? get romaji;
  @override
  String? get english;
  @override
  String? get native;
  @override
  String? get userPreferred;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeTitleCopyWith<_$_AnimeTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeTrailer _$AnimeTrailerFromJson(Map<String, dynamic> json) {
  return _AnimeTrailer.fromJson(json);
}

/// @nodoc
mixin _$AnimeTrailer {
  String? get id => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeTrailerCopyWith<AnimeTrailer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeTrailerCopyWith<$Res> {
  factory $AnimeTrailerCopyWith(
          AnimeTrailer value, $Res Function(AnimeTrailer) then) =
      _$AnimeTrailerCopyWithImpl<$Res, AnimeTrailer>;
  @useResult
  $Res call({String? id, String? site, String? thumbnail});
}

/// @nodoc
class _$AnimeTrailerCopyWithImpl<$Res, $Val extends AnimeTrailer>
    implements $AnimeTrailerCopyWith<$Res> {
  _$AnimeTrailerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? site = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeTrailerCopyWith<$Res>
    implements $AnimeTrailerCopyWith<$Res> {
  factory _$$_AnimeTrailerCopyWith(
          _$_AnimeTrailer value, $Res Function(_$_AnimeTrailer) then) =
      __$$_AnimeTrailerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? site, String? thumbnail});
}

/// @nodoc
class __$$_AnimeTrailerCopyWithImpl<$Res>
    extends _$AnimeTrailerCopyWithImpl<$Res, _$_AnimeTrailer>
    implements _$$_AnimeTrailerCopyWith<$Res> {
  __$$_AnimeTrailerCopyWithImpl(
      _$_AnimeTrailer _value, $Res Function(_$_AnimeTrailer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? site = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_AnimeTrailer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeTrailer implements _AnimeTrailer {
  const _$_AnimeTrailer({this.id, this.site, this.thumbnail});

  factory _$_AnimeTrailer.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeTrailerFromJson(json);

  @override
  final String? id;
  @override
  final String? site;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'AnimeTrailer(id: $id, site: $site, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeTrailer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, site, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeTrailerCopyWith<_$_AnimeTrailer> get copyWith =>
      __$$_AnimeTrailerCopyWithImpl<_$_AnimeTrailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeTrailerToJson(
      this,
    );
  }
}

abstract class _AnimeTrailer implements AnimeTrailer {
  const factory _AnimeTrailer(
      {final String? id,
      final String? site,
      final String? thumbnail}) = _$_AnimeTrailer;

  factory _AnimeTrailer.fromJson(Map<String, dynamic> json) =
      _$_AnimeTrailer.fromJson;

  @override
  String? get id;
  @override
  String? get site;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeTrailerCopyWith<_$_AnimeTrailer> get copyWith =>
      throw _privateConstructorUsedError;
}
