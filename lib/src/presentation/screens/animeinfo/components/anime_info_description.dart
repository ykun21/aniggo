import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'components.dart';

class AnimeDescription extends StatelessWidget {
  final AnimeResults? anime;

  const AnimeDescription({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle clickableTextStyle = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary);
    return Padding(
        padding: AppDimens.defPadH16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ReadMoreText(
              anime!.description ?? "",
              trimLines: 6,
              trimMode: TrimMode.Line,
              trimCollapsedText: ' Show more',
              trimExpandedText: ' Show less',
              moreStyle: clickableTextStyle,
              lessStyle: clickableTextStyle,
            ),
            if (anime?.genres != null) AppDimens.sizedBoxH5,
            AnimeTags(genres: anime?.genres ?? []),
            AppDimens.sizedBoxH10,
            Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.start,
                direction: Axis.horizontal,
                spacing: 8,
                runSpacing: 0,
                children: [
                  if (anime?.id != null)
                    OutlinedButton.icon(
                        icon: const Icon(Icons.open_in_new_outlined),
                        onPressed: () => launchAnilist(anime?.id),
                        label: const Text("Anilist")),
                  if (anime?.malId != null)
                    OutlinedButton.icon(
                        icon: const Icon(Icons.open_in_new_outlined),
                        onPressed: () => launchMyAnimeList(anime?.malId),
                        label: const Text("MyAnimeList")),
                  if (anime?.trailer?.id != null)
                    OutlinedButton.icon(
                        icon: const Icon(Icons.play_circle_outline_outlined),
                        onPressed: () => launchTrailer(anime?.trailer?.id),
                        label: const Text("Trailer")),
                ]),
            AppDimens.sizedBoxH10,
          ],
        ));
  }
}
