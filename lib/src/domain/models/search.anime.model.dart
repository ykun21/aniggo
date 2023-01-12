import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'search.anime.model.freezed.dart';
part 'search.anime.model.g.dart';

@freezed
class SearchAnimeModel with _$SearchAnimeModel {
  const factory SearchAnimeModel({
    @Default(0) int currentPage,
    @Default(false) bool hasNextPage,
    @Default(0) int totalPages,
    @Default(0) int totalResults,
    @Default([]) List<SearchedResult> results,
  }) = _SearchAnimeModel;

  factory SearchAnimeModel.fromJson(Map<String, dynamic> json) =>
      _$SearchAnimeModelFromJson(json);
}

@freezed
class SearchedResult with _$SearchedResult {
  const factory SearchedResult({
    String? id,
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
    int? releaseDate,
  }) = _SearchedResult;

  factory SearchedResult.fromJson(Map<String, dynamic> json) =>
      _$SearchedResultFromJson(json);
}
