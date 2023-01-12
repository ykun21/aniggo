import 'package:freezed_annotation/freezed_annotation.dart';

import 'anime_model.dart';
part 'anime_info_model.g.dart';
part 'anime_info_model.freezed.dart';

@freezed
class AnimeInfoModel with _$AnimeInfoModel {
  const factory AnimeInfoModel({
    String? id,
    AnimeTitle? title,
    int? malId,
    List<String>? synonyms,
    bool? isLicensed,
    bool? isAdult,
    String? countryOfOrigin,
    AnimeTrailer? trailer,
    String? image,
    int? popularity,
    String? color,
    String? cover,
    String? description,
    String? status,
    int? releaseDate,
    StartDate? startDate,
    StartDate? endDate,
    int? totalEpisodes,
    int? rating,
    int? duration,
    List<String>? genres,
    String? season,
    List<String>? studios,
    String? subOrDub,
    String? type,
    List<Recommendation>? recommendations,
    List<Character>? characters,
    List<Relation>? relations,
    List<Episode>? episodes,
  }) = _AnimeInfoModel;

  factory AnimeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoModelFromJson(json);
}

@freezed
class StartDate with _$StartDate {
  const factory StartDate({
    int? year,
    int? month,
    int? day,
  }) = _StartDate;

  factory StartDate.fromJson(Map<String, dynamic> json) =>
      _$StartDateFromJson(json);
}

@freezed
class Recommendation with _$Recommendation {
  const factory Recommendation({
    int? id,
    int? malId,
    AnimeTitle? title,
    String? status,
    int? episodes,
    String? image,
    String? cover,
    int? rating,
    String? type,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}

@freezed
class Character with _$Character {
  const factory Character({
    int? id,
    String? role,
    VAname? name,
    String? image,
    List<VoiceActors>? voiceActors,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
class VoiceActors with _$VoiceActors {
  const factory VoiceActors({
    int? id,
    VAname? name,
    String? image,
  }) = _VoiceActors;

  factory VoiceActors.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorsFromJson(json);
}

@freezed
class VAname with _$VAname {
  const factory VAname({
    String? first,
    String? last,
    String? full,
    String? native,
    String? userPreferred,
  }) = _VAname;

  factory VAname.fromJson(Map<String, dynamic> json) => _$VAnameFromJson(json);
}

@freezed
class Relation with _$Relation {
  const factory Relation({
    int? id,
    String? relationType,
    int? malId,
    AnimeTitle? title,
    String? status,
    int? episodes,
    String? image,
    String? color,
    String? type,
    String? cover,
    int? rating,
  }) = _Relation;

  factory Relation.fromJson(Map<String, dynamic> json) =>
      _$RelationFromJson(json);
}

@freezed
class Episode with _$Episode {
  const factory Episode({
    String? id,
    String? title,
    String? image,
    int? number,
    String? description,
    String? url,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
