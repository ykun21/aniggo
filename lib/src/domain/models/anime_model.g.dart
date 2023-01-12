// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeModel _$$_AnimeModelFromJson(Map<String, dynamic> json) =>
    _$_AnimeModel(
      currentPage: json['currentPage'] as int?,
      hasNextPage: json['hasNextPage'] as bool?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => AnimeResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnimeModelToJson(_$_AnimeModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'hasNextPage': instance.hasNextPage,
      'results': instance.results,
    };

_$_AnimeResults _$$_AnimeResultsFromJson(Map<String, dynamic> json) =>
    _$_AnimeResults(
      id: json['id'] as String,
      malId: json['malId'] as int?,
      title: json['title'] == null
          ? null
          : AnimeTitle.fromJson(json['title'] as Map<String, dynamic>),
      image: json['image'] as String?,
      trailer: json['trailer'] == null
          ? null
          : AnimeTrailer.fromJson(json['trailer'] as Map<String, dynamic>),
      description: json['description'] as String?,
      status: json['status'] as String?,
      cover: json['cover'] as String?,
      rating: json['rating'] as int?,
      releaseDate: json['releaseDate'] as int?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      totalEpisodes: json['totalEpisodes'] as int?,
      duration: json['duration'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_AnimeResultsToJson(_$_AnimeResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'malId': instance.malId,
      'title': instance.title,
      'image': instance.image,
      'trailer': instance.trailer,
      'description': instance.description,
      'status': instance.status,
      'cover': instance.cover,
      'rating': instance.rating,
      'releaseDate': instance.releaseDate,
      'genres': instance.genres,
      'totalEpisodes': instance.totalEpisodes,
      'duration': instance.duration,
      'type': instance.type,
    };

_$_AnimeTitle _$$_AnimeTitleFromJson(Map<String, dynamic> json) =>
    _$_AnimeTitle(
      romaji: json['romaji'] as String?,
      english: json['english'] as String?,
      native: json['native'] as String?,
      userPreferred: json['userPreferred'] as String?,
    );

Map<String, dynamic> _$$_AnimeTitleToJson(_$_AnimeTitle instance) =>
    <String, dynamic>{
      'romaji': instance.romaji,
      'english': instance.english,
      'native': instance.native,
      'userPreferred': instance.userPreferred,
    };

_$_AnimeTrailer _$$_AnimeTrailerFromJson(Map<String, dynamic> json) =>
    _$_AnimeTrailer(
      id: json['id'] as String?,
      site: json['site'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_AnimeTrailerToJson(_$_AnimeTrailer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'site': instance.site,
      'thumbnail': instance.thumbnail,
    };
