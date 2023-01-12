import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryList extends ConsumerWidget {
  const LibraryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchLibrary = ref.watch(favouritesProvider);

    return watchLibrary.when(
        data: (data) {
          if (data.isEmpty) {
            return const EmptyListWidget(
                text: "You dont have any animes in favourites");
          } else {
            return GridView.builder(
              padding: AppDimens.defPadH,
              itemCount: data.length,
              cacheExtent: 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 360,
                  crossAxisCount: getCrossAxisCount(context)),
              itemBuilder: (BuildContext context, int index) {
                var animeData = data[index];
                return AnimeCard(
                    anime: AnimeResults(
                  id: animeData.aniId,
                  cover: animeData.cover,
                  malId: animeData.malId,
                  title: AnimeTitle(
                      english: animeData.title?.english,
                      romaji: animeData.title?.romaji,
                      native: animeData.title?.native,
                      userPreferred: animeData.title?.userPreferred),
                  image: animeData.image,
                  description: animeData.description,
                  status: animeData.status,
                  rating: animeData.rating,
                  releaseDate: animeData.releaseDate,
                  totalEpisodes: animeData.totalEpisodes,
                  duration: animeData.duration,
                  type: animeData.type,
                ));
              },
            );
          }
        },
        error: (err, stack) => CustomErrorWidget(error: "$err"),
        loading: () => const LoaderWidget());
  }
}
