import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchAnimeList extends ConsumerWidget {
  const SearchAnimeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchWatch = ref.watch(searchAnimeProvider);
    return SliverPadding(
      padding: AppDimens.defPadH,
      sliver: PagedSliverGrid<int, SearchedResult>(
          addAutomaticKeepAlives: true,
          pagingController: searchWatch.pageController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 360,
              crossAxisCount: getCrossAxisCount(context)),
          builderDelegate: PagedChildBuilderDelegate<SearchedResult>(
              itemBuilder: (context, anime, index) => AnimeCard(
                  anime: AnimeResults(
                      id: anime.id!,
                      malId: anime.malId,
                      title: anime.title,
                      image: anime.image,
                      trailer: const AnimeTrailer(),
                      description: anime.description,
                      status: anime.status,
                      cover: anime.cover,
                      rating: anime.rating,
                      releaseDate: anime.releaseDate,
                      genres: anime.genres,
                      totalEpisodes: anime.totalEpisodes,
                      duration: 0,
                      type: anime.type)))),
    );
  }
}
