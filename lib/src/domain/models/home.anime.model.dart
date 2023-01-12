import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'home.anime.model.freezed.dart';
part 'home.anime.model.g.dart';

@freezed
class HomeAnime with _$HomeAnime {
  const factory HomeAnime({
    AnimeModel? trending,
    AnimeModel? popular,
  }) = _HomeAnime;

  factory HomeAnime.fromJson(Map<String, dynamic> json) =>
      _$HomeAnimeFromJson(json);
}
