import 'package:aniggo/src/data/data.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final animeInfoServiceProvider = Provider<AnimeInfoData>((ref) {
  final provider = ref.watch(appSettingsProvider).provider;
  return AnimeInfoData(ref.watch(httpServiceProvider), provider);
});

class AnimeInfo {
  final AnimeInfoModel? anime;
  final Favourite? favourite;

  AnimeInfo({this.anime, this.favourite});
}

final animeinfoDataProvider =
    FutureProvider.autoDispose.family<AnimeInfoModel?, String>((ref, id) async {
  /// When the provider is destroyed, cancel the http request
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());

  /// fetch anime info
  final anime = await ref
      .watch(animeInfoServiceProvider)
      .getAnimeInfo(id: id, cancelToken: cancelToken);

  return anime;
});

enum EpisodeSortType { newest, oldest }

final episodeSortTypeProvider =
    StateProvider<EpisodeSortType>((ref) => EpisodeSortType.newest);

final episodeSortProvider = StateProvider.family
    .autoDispose<List<Episode>, List<Episode>>((ref, episodes) {
  final sortType = ref.watch(episodeSortTypeProvider);
  switch (sortType) {
    case EpisodeSortType.oldest:
      return episodes;
    case EpisodeSortType.newest:
      return episodes.reversed.toList();
    default:
      return episodes;
  }
});

final episodeURLprovider =
    FutureProvider.family<EpisodeUrl?, String>((ref, id) async {
  final cancelToken = CancelToken();
  // When the provider is destroyed, cancel the http request
  ref.onDispose(() => cancelToken.cancel());
  return await ref.read(animeInfoServiceProvider).getEpisodeUrl(episodeId: id);
});
