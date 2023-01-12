import 'package:freezed_annotation/freezed_annotation.dart';
part 'anime_model.g.dart';
part 'anime_model.freezed.dart';

@freezed
class AnimeModel with _$AnimeModel {
  const factory AnimeModel(
      {int? currentPage,
      bool? hasNextPage,
      List<AnimeResults>? results}) = _AnimeModel;

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);
}

@freezed
class AnimeResults with _$AnimeResults {
  const factory AnimeResults({
    required String id,
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
    String? type,
  }) = _AnimeResults;

  factory AnimeResults.fromJson(Map<String, dynamic> json) =>
      _$AnimeResultsFromJson(json);
}

@freezed
class AnimeTitle with _$AnimeTitle {
  const factory AnimeTitle({
    String? romaji,
    String? english,
    String? native,
    String? userPreferred,
  }) = _AnimeTitle;

  factory AnimeTitle.fromJson(Map<String, dynamic> json) =>
      _$AnimeTitleFromJson(json);
}

@freezed
class AnimeTrailer with _$AnimeTrailer {
  const factory AnimeTrailer({String? id, String? site, String? thumbnail}) =
      _AnimeTrailer;

  factory AnimeTrailer.fromJson(Map<String, dynamic> json) =>
      _$AnimeTrailerFromJson(json);
}
