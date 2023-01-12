// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeInfoModel _$$_AnimeInfoModelFromJson(Map<String, dynamic> json) =>
    _$_AnimeInfoModel(
      id: json['id'] as String?,
      title: json['title'] == null
          ? null
          : AnimeTitle.fromJson(json['title'] as Map<String, dynamic>),
      malId: json['malId'] as int?,
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isLicensed: json['isLicensed'] as bool?,
      isAdult: json['isAdult'] as bool?,
      countryOfOrigin: json['countryOfOrigin'] as String?,
      trailer: json['trailer'] == null
          ? null
          : AnimeTrailer.fromJson(json['trailer'] as Map<String, dynamic>),
      image: json['image'] as String?,
      popularity: json['popularity'] as int?,
      color: json['color'] as String?,
      cover: json['cover'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      releaseDate: json['releaseDate'] as int?,
      startDate: json['startDate'] == null
          ? null
          : StartDate.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : StartDate.fromJson(json['endDate'] as Map<String, dynamic>),
      totalEpisodes: json['totalEpisodes'] as int?,
      rating: json['rating'] as int?,
      duration: json['duration'] as int?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      season: json['season'] as String?,
      studios:
          (json['studios'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subOrDub: json['subOrDub'] as String?,
      type: json['type'] as String?,
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      relations: (json['relations'] as List<dynamic>?)
          ?.map((e) => Relation.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnimeInfoModelToJson(_$_AnimeInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'malId': instance.malId,
      'synonyms': instance.synonyms,
      'isLicensed': instance.isLicensed,
      'isAdult': instance.isAdult,
      'countryOfOrigin': instance.countryOfOrigin,
      'trailer': instance.trailer,
      'image': instance.image,
      'popularity': instance.popularity,
      'color': instance.color,
      'cover': instance.cover,
      'description': instance.description,
      'status': instance.status,
      'releaseDate': instance.releaseDate,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'totalEpisodes': instance.totalEpisodes,
      'rating': instance.rating,
      'duration': instance.duration,
      'genres': instance.genres,
      'season': instance.season,
      'studios': instance.studios,
      'subOrDub': instance.subOrDub,
      'type': instance.type,
      'recommendations': instance.recommendations,
      'characters': instance.characters,
      'relations': instance.relations,
      'episodes': instance.episodes,
    };

_$_StartDate _$$_StartDateFromJson(Map<String, dynamic> json) => _$_StartDate(
      year: json['year'] as int?,
      month: json['month'] as int?,
      day: json['day'] as int?,
    );

Map<String, dynamic> _$$_StartDateToJson(_$_StartDate instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

_$_Recommendation _$$_RecommendationFromJson(Map<String, dynamic> json) =>
    _$_Recommendation(
      id: json['id'] as int?,
      malId: json['malId'] as int?,
      title: json['title'] == null
          ? null
          : AnimeTitle.fromJson(json['title'] as Map<String, dynamic>),
      status: json['status'] as String?,
      episodes: json['episodes'] as int?,
      image: json['image'] as String?,
      cover: json['cover'] as String?,
      rating: json['rating'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_RecommendationToJson(_$_Recommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'malId': instance.malId,
      'title': instance.title,
      'status': instance.status,
      'episodes': instance.episodes,
      'image': instance.image,
      'cover': instance.cover,
      'rating': instance.rating,
      'type': instance.type,
    };

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as int?,
      role: json['role'] as String?,
      name: json['name'] == null
          ? null
          : VAname.fromJson(json['name'] as Map<String, dynamic>),
      image: json['image'] as String?,
      voiceActors: (json['voiceActors'] as List<dynamic>?)
          ?.map((e) => VoiceActors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'name': instance.name,
      'image': instance.image,
      'voiceActors': instance.voiceActors,
    };

_$_VoiceActors _$$_VoiceActorsFromJson(Map<String, dynamic> json) =>
    _$_VoiceActors(
      id: json['id'] as int?,
      name: json['name'] == null
          ? null
          : VAname.fromJson(json['name'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_VoiceActorsToJson(_$_VoiceActors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$_VAname _$$_VAnameFromJson(Map<String, dynamic> json) => _$_VAname(
      first: json['first'] as String?,
      last: json['last'] as String?,
      full: json['full'] as String?,
      native: json['native'] as String?,
      userPreferred: json['userPreferred'] as String?,
    );

Map<String, dynamic> _$$_VAnameToJson(_$_VAname instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'full': instance.full,
      'native': instance.native,
      'userPreferred': instance.userPreferred,
    };

_$_Relation _$$_RelationFromJson(Map<String, dynamic> json) => _$_Relation(
      id: json['id'] as int?,
      relationType: json['relationType'] as String?,
      malId: json['malId'] as int?,
      title: json['title'] == null
          ? null
          : AnimeTitle.fromJson(json['title'] as Map<String, dynamic>),
      status: json['status'] as String?,
      episodes: json['episodes'] as int?,
      image: json['image'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String?,
      cover: json['cover'] as String?,
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$$_RelationToJson(_$_Relation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relationType': instance.relationType,
      'malId': instance.malId,
      'title': instance.title,
      'status': instance.status,
      'episodes': instance.episodes,
      'image': instance.image,
      'color': instance.color,
      'type': instance.type,
      'cover': instance.cover,
      'rating': instance.rating,
    };

_$_Episode _$$_EpisodeFromJson(Map<String, dynamic> json) => _$_Episode(
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      number: json['number'] as int?,
      description: json['description'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_EpisodeToJson(_$_Episode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'number': instance.number,
      'description': instance.description,
      'url': instance.url,
    };
