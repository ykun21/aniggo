// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.anime.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchAnimeModel _$SearchAnimeModelFromJson(Map<String, dynamic> json) {
  return _SearchAnimeModel.fromJson(json);
}

/// @nodoc
mixin _$SearchAnimeModel {
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<SearchedResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAnimeModelCopyWith<SearchAnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeModelCopyWith<$Res> {
  factory $SearchAnimeModelCopyWith(
          SearchAnimeModel value, $Res Function(SearchAnimeModel) then) =
      _$SearchAnimeModelCopyWithImpl<$Res, SearchAnimeModel>;
  @useResult
  $Res call(
      {int currentPage,
      bool hasNextPage,
      int totalPages,
      int totalResults,
      List<SearchedResult> results});
}

/// @nodoc
class _$SearchAnimeModelCopyWithImpl<$Res, $Val extends SearchAnimeModel>
    implements $SearchAnimeModelCopyWith<$Res> {
  _$SearchAnimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? hasNextPage = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchedResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAnimeModelCopyWith<$Res>
    implements $SearchAnimeModelCopyWith<$Res> {
  factory _$$_SearchAnimeModelCopyWith(
          _$_SearchAnimeModel value, $Res Function(_$_SearchAnimeModel) then) =
      __$$_SearchAnimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      bool hasNextPage,
      int totalPages,
      int totalResults,
      List<SearchedResult> results});
}

/// @nodoc
class __$$_SearchAnimeModelCopyWithImpl<$Res>
    extends _$SearchAnimeModelCopyWithImpl<$Res, _$_SearchAnimeModel>
    implements _$$_SearchAnimeModelCopyWith<$Res> {
  __$$_SearchAnimeModelCopyWithImpl(
      _$_SearchAnimeModel _value, $Res Function(_$_SearchAnimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? hasNextPage = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_$_SearchAnimeModel(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchedResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchAnimeModel implements _SearchAnimeModel {
  const _$_SearchAnimeModel(
      {this.currentPage = 0,
      this.hasNextPage = false,
      this.totalPages = 0,
      this.totalResults = 0,
      final List<SearchedResult> results = const []})
      : _results = results;

  factory _$_SearchAnimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchAnimeModelFromJson(json);

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final int totalResults;
  final List<SearchedResult> _results;
  @override
  @JsonKey()
  List<SearchedResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchAnimeModel(currentPage: $currentPage, hasNextPage: $hasNextPage, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAnimeModel &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, hasNextPage,
      totalPages, totalResults, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAnimeModelCopyWith<_$_SearchAnimeModel> get copyWith =>
      __$$_SearchAnimeModelCopyWithImpl<_$_SearchAnimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchAnimeModelToJson(
      this,
    );
  }
}

abstract class _SearchAnimeModel implements SearchAnimeModel {
  const factory _SearchAnimeModel(
      {final int currentPage,
      final bool hasNextPage,
      final int totalPages,
      final int totalResults,
      final List<SearchedResult> results}) = _$_SearchAnimeModel;

  factory _SearchAnimeModel.fromJson(Map<String, dynamic> json) =
      _$_SearchAnimeModel.fromJson;

  @override
  int get currentPage;
  @override
  bool get hasNextPage;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  List<SearchedResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAnimeModelCopyWith<_$_SearchAnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchedResult _$SearchedResultFromJson(Map<String, dynamic> json) {
  return _SearchedResult.fromJson(json);
}

/// @nodoc
mixin _$SearchedResult {
  String? get id => throw _privateConstructorUsedError;
  int? get malId => throw _privateConstructorUsedError;
  AnimeTitle? get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  int? get totalEpisodes => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedResultCopyWith<SearchedResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedResultCopyWith<$Res> {
  factory $SearchedResultCopyWith(
          SearchedResult value, $Res Function(SearchedResult) then) =
      _$SearchedResultCopyWithImpl<$Res, SearchedResult>;
  @useResult
  $Res call(
      {String? id,
      int? malId,
      AnimeTitle? title,
      String? status,
      String? image,
      String? cover,
      int? popularity,
      int? totalEpisodes,
      String? description,
      List<String>? genres,
      int? rating,
      String? color,
      String? type,
      int? releaseDate});

  $AnimeTitleCopyWith<$Res>? get title;
}

/// @nodoc
class _$SearchedResultCopyWithImpl<$Res, $Val extends SearchedResult>
    implements $SearchedResultCopyWith<$Res> {
  _$SearchedResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? malId = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? cover = freezed,
    Object? popularity = freezed,
    Object? totalEpisodes = freezed,
    Object? description = freezed,
    Object? genres = freezed,
    Object? rating = freezed,
    Object? color = freezed,
    Object? type = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnimeTitle?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEpisodes: freezed == totalEpisodes
          ? _value.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as int?,
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
}

/// @nodoc
abstract class _$$_SearchedResultCopyWith<$Res>
    implements $SearchedResultCopyWith<$Res> {
  factory _$$_SearchedResultCopyWith(
          _$_SearchedResult value, $Res Function(_$_SearchedResult) then) =
      __$$_SearchedResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? malId,
      AnimeTitle? title,
      String? status,
      String? image,
      String? cover,
      int? popularity,
      int? totalEpisodes,
      String? description,
      List<String>? genres,
      int? rating,
      String? color,
      String? type,
      int? releaseDate});

  @override
  $AnimeTitleCopyWith<$Res>? get title;
}

/// @nodoc
class __$$_SearchedResultCopyWithImpl<$Res>
    extends _$SearchedResultCopyWithImpl<$Res, _$_SearchedResult>
    implements _$$_SearchedResultCopyWith<$Res> {
  __$$_SearchedResultCopyWithImpl(
      _$_SearchedResult _value, $Res Function(_$_SearchedResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? malId = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? cover = freezed,
    Object? popularity = freezed,
    Object? totalEpisodes = freezed,
    Object? description = freezed,
    Object? genres = freezed,
    Object? rating = freezed,
    Object? color = freezed,
    Object? type = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$_SearchedResult(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnimeTitle?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEpisodes: freezed == totalEpisodes
          ? _value.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchedResult implements _SearchedResult {
  const _$_SearchedResult(
      {this.id,
      this.malId,
      this.title,
      this.status,
      this.image,
      this.cover,
      this.popularity,
      this.totalEpisodes,
      this.description,
      final List<String>? genres,
      this.rating,
      this.color,
      this.type,
      this.releaseDate})
      : _genres = genres;

  factory _$_SearchedResult.fromJson(Map<String, dynamic> json) =>
      _$$_SearchedResultFromJson(json);

  @override
  final String? id;
  @override
  final int? malId;
  @override
  final AnimeTitle? title;
  @override
  final String? status;
  @override
  final String? image;
  @override
  final String? cover;
  @override
  final int? popularity;
  @override
  final int? totalEpisodes;
  @override
  final String? description;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? rating;
  @override
  final String? color;
  @override
  final String? type;
  @override
  final int? releaseDate;

  @override
  String toString() {
    return 'SearchedResult(id: $id, malId: $malId, title: $title, status: $status, image: $image, cover: $cover, popularity: $popularity, totalEpisodes: $totalEpisodes, description: $description, genres: $genres, rating: $rating, color: $color, type: $type, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchedResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                other.totalEpisodes == totalEpisodes) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      malId,
      title,
      status,
      image,
      cover,
      popularity,
      totalEpisodes,
      description,
      const DeepCollectionEquality().hash(_genres),
      rating,
      color,
      type,
      releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchedResultCopyWith<_$_SearchedResult> get copyWith =>
      __$$_SearchedResultCopyWithImpl<_$_SearchedResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchedResultToJson(
      this,
    );
  }
}

abstract class _SearchedResult implements SearchedResult {
  const factory _SearchedResult(
      {final String? id,
      final int? malId,
      final AnimeTitle? title,
      final String? status,
      final String? image,
      final String? cover,
      final int? popularity,
      final int? totalEpisodes,
      final String? description,
      final List<String>? genres,
      final int? rating,
      final String? color,
      final String? type,
      final int? releaseDate}) = _$_SearchedResult;

  factory _SearchedResult.fromJson(Map<String, dynamic> json) =
      _$_SearchedResult.fromJson;

  @override
  String? get id;
  @override
  int? get malId;
  @override
  AnimeTitle? get title;
  @override
  String? get status;
  @override
  String? get image;
  @override
  String? get cover;
  @override
  int? get popularity;
  @override
  int? get totalEpisodes;
  @override
  String? get description;
  @override
  List<String>? get genres;
  @override
  int? get rating;
  @override
  String? get color;
  @override
  String? get type;
  @override
  int? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$_SearchedResultCopyWith<_$_SearchedResult> get copyWith =>
      throw _privateConstructorUsedError;
}
