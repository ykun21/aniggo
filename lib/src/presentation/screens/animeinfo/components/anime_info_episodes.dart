import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:aniggo/src/routes/routes.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimeInfoEpisodesScreen extends ConsumerWidget {
  AnimeInfoEpisodesScreen({super.key, required this.anime})
      : episodes = anime.episodes ?? [];

  final AnimeInfoModel anime;
  final List<Episode> episodes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    /// watch [isAnimeInLibraryProvider]
    final favouriteAnime = ref.watch(isAnimeInLibraryProvider(anime.id!));

    /// add selected episode to viewedEpisodes of [favouriteAnime]
    void addEpisode(int? episode) async {
      if (episode != null) {
        ref
            .read(dataBaseProvider)
            .addEpisode(id: anime.id!, episodeNumber: episode)
            .then((value) {
          showSnackBar(context, "Added to watched");
          return ref.refresh(isAnimeInLibraryProvider(anime.id!));
        });
      }
    }

    /// remove selected episode from viewedEpisodes of [favouriteAnime]
    void removeEpisode(int? episode) async {
      if (episode != null) {
        ref
            .read(dataBaseProvider)
            .removeEpisode(id: anime.id!, episodeNumber: episode)
            .then((value) {
          showSnackBar(context, "Removed from watched");
          return ref.refresh(isAnimeInLibraryProvider(anime.id!));
        });
      }
    }

    /// check if specifc episode is already viewed
    ///
    bool isEpisodeViewed(int episodeNumber) => favouriteAnime.maybeWhen(
          data: (data) => data?.viewedEpisodes.contains(episodeNumber) ?? false,
          orElse: () => false,
        );

    //
    bool isFavorite = favouriteAnime.valueOrNull != null ? true : false;

    if (episodes.isEmpty) {
      return const SliverToBoxAdapter(
          child: CustomErrorWidget(
              error: "No episode found, Try with different provider"));
    } else {
      final sortedEpisodes = ref.watch(episodeSortProvider(episodes));
      return SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: sortedEpisodes.length, (context, index) {
        var episode = sortedEpisodes[index];
        return ListTile(
            contentPadding: AppDimens.defPadH16,
            title: Text("Episode ${episode.number}",
                maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle: Text(episode.title ?? "",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall),
            onTap: () => Navigator.pushNamed(context, RouteNames.play,
                arguments: episode),
            trailing: isFavorite
                ? isEpisodeViewed(episode.number!)
                    ? IconButton(
                        onPressed: () => removeEpisode(episode.number),
                        tooltip: "Remove from watched",
                        icon: Icon(
                          Icons.check_circle_rounded,
                          color: colors.primary,
                        ))
                    : IconButton(
                        onPressed: () => addEpisode(episode.number),
                        tooltip: "Add to watched",
                        icon: Icon(Icons.add, color: colors.onSurfaceVariant))
                : const SizedBox.shrink());
      }));
    }
  }
}
