import 'package:aniggo/src/domain/domain.dart';

abstract class AnimeInfoRepository {
  const AnimeInfoRepository();

  Future<AnimeInfoModel?> getAnimeInfo({required String id});
  Future<EpisodeUrl?> getEpisodeUrl({required String episodeId});
}
