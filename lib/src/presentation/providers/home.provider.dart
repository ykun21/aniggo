import 'package:aniggo/src/data/data.dart';
import 'package:aniggo/src/domain/models/home.anime.model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeAnimeProvider = FutureProvider<HomeAnime>((ref) async {
  final trending = await ref.watch(homeDataProvider).getTrendingAnimes();
  final popular = await ref.watch(homeDataProvider).getPopularAnimes();
  return HomeAnime(trending: trending, popular: popular);
});
