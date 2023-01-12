import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:aniggo/src/routes/routes.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimeInfoActions extends ConsumerWidget {
  final AnimeInfoModel anime;

  const AnimeInfoActions({super.key, required this.anime});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// watch [isAnimeInLibraryProvider]
    final isAnimeInLib = ref.watch(isAnimeInLibraryProvider(anime.id!));

    /// read [dataBaseProvider]
    final db = ref.read(dataBaseProvider);

    /// add anime to favourites and refresh [isAnimeInLibraryProvider]
    void addAnime() async => db.setAnime(anime: anime).then((value) {
          showSnackBar(context, "Added to favourites");
          return ref.refresh(isAnimeInLibraryProvider(anime.id!));
        });

    /// remove anime from favourites and refresh [isAnimeInLibraryProvider]
    void deleteAnime() async => db.deleteAnime(anime.id!).then((value) {
          showSnackBar(context, "Removed from favourites");
          return ref.refresh(isAnimeInLibraryProvider(anime.id!));
        });

    /// set [EpisodeSortType]
    void setSortType(EpisodeSortType type) async {
      ref.read(episodeSortTypeProvider.notifier).update((state) => type);
      Navigator.pop(context);
    }

    if (anime.episodes == null || anime.episodes!.isEmpty) {
      return const SizedBox.shrink();
    } else {
      return isAnimeInLib.when(data: (data) {
        /// get last watched episode
        Episode? latestEpisode = anime.episodes?.last;

        /// watch next episode
        void onWatch() => Navigator.pushNamed(context, RouteNames.play,
            arguments: latestEpisode);

        ///
        return Column(
          children: [
            Padding(
              padding: AppDimens.defPad16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: FilledButton.tonalIcon(
                        style: FilledButton.styleFrom(
                            minimumSize:
                                const Size(double.infinity, kToolbarHeight)),
                        onPressed: () => onWatch(),
                        icon: const Icon(Icons.play_arrow_outlined),
                        label: Text(
                          "Play Episode ${latestEpisode?.number}",
                        )),
                  ),
                  AppDimens.sizedBoxW10,
                  Expanded(
                    child: data != null
                        ? OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                                minimumSize: const Size(
                                    double.infinity, kToolbarHeight)),
                            onPressed: () => deleteAnime(),
                            icon: const Icon(Icons.favorite),
                            label: const Text("Remove"))
                        : OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                                minimumSize: const Size(
                                    double.infinity, kToolbarHeight)),
                            onPressed: () => addAnime(),
                            icon: const Icon(Icons.favorite_outline),
                            label: const Text("Add to favourites")),
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppDimens.defPad,
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(AppDimens.defRadius),
                    child: Padding(
                      padding: AppDimens.defPad,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${anime.totalEpisodes ?? 0} episodes",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const Icon(Icons.filter_list_outlined),
                        ],
                      ),
                    ),
                    onTap: () => _sortBottomSheet(context, setSortType),
                  ),
                  const Divider(indent: 8, endIndent: 8),
                ],
              ),
            ),
          ],
        );
      }, error: (error, stack) {
        return const SizedBox.shrink();
      }, loading: () {
        return const SizedBox.shrink();
      });
    }
  }

  _sortBottomSheet(
      BuildContext context, Function(EpisodeSortType type) setSortType) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: AppDimens.defPad16,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  title: const Text("Sort by newest"),
                  onTap: () => setSortType(EpisodeSortType.newest),
                ),
                ListTile(
                  title: const Text("Sort by oldest"),
                  onTap: () => setSortType(EpisodeSortType.oldest),
                ),
              ]),
            ),
          );
        });
  }
}
