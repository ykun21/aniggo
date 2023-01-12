// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.anime.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchAnimeModel _$$_SearchAnimeModelFromJson(Map<String, dynamic> json) =>
    _$_SearchAnimeModel(
      currentPage: json['currentPage'] as int? ?? 0,
      hasNextPage: json['hasNextPage'] as bool? ?? false,
      totalPages: json['totalPages'] as int? ?? 0,
      totalResults: json['totalResults'] as int? ?? 0,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchedResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SearchAnimeModelToJson(_$_SearchAnimeModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'hasNextPage': instance.hasNextPage,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'results': instance.results,
    };

_$_SearchedResult _$$_SearchedResultFromJson(Map<String, dynamic> json) =>
    _$_SearchedResult(
      id: json['id'] as String?,
      malId: json['malId'] as int?,
      title: json['title'] == null
          ? null
          : AnimeTitle.fromJson(json['title'] as Map<String, dynamic>),
      status: json['status'] as String?,
      image: json['image'] as String?,
      cover: json['cover'] as String?,
      popularity: json['popularity'] as int?,
      totalEpisodes: json['totalEpisodes'] as int?,
      description: json['description'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: json['rating'] as int?,
      color: json['color'] as String?,
      type: json['type'] as String?,
      releaseDate: json['releaseDate'] as int?,
    );

Map<String, dynamic> _$$_SearchedResultToJson(_$_SearchedResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'malId': instance.malId,
      'title': instance.title,
      'status': instance.status,
      'image': instance.image,
      'cover': instance.cover,
      'popularity': instance.popularity,
      'totalEpisodes': instance.totalEpisodes,
      'description': instance.description,
      'genres': instance.genres,
      'rating': instance.rating,
      'color': instance.color,
      'type': instance.type,
      'releaseDate': instance.releaseDate,
    };
