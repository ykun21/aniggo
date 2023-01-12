import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:aniggo/src/routes/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    Key? key,
    required this.anime,
    this.height = 360,
    this.width = 240,
  }) : super(key: key);

  final AnimeResults anime;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        RouteNames.info,
        arguments: AnimeInfoScreenArguments(
            anime, "${anime.image}-${anime.cover}-${anime.id}"),
      ),
      borderRadius: BorderRadius.circular(AppDimens.defRadius4),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.defRadius4),
                child: Hero(
                  tag: "${anime.image}-${anime.cover}-${anime.id}",
                  child: CachedNetworkImage(
                    height: height! - 85,
                    width: width,
                    imageUrl: anime.image!,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: ((context, url, dwprogress) =>
                        Center(
                            child: CircularProgressIndicator(
                                value: dwprogress.progress))),
                    errorWidget: (context, url, error) =>
                        const CustomErrorWidget(error: "No image found"),
                    fadeOutDuration: const Duration(milliseconds: 300),
                    fadeInDuration: const Duration(milliseconds: 300),
                  ),
                ),
              ),
              Padding(
                padding: AppDimens.defPad,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      child: Text(
                        anime.title?.english ??
                            anime.title?.romaji ??
                            anime.title?.userPreferred ??
                            "",
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    AppDimens.sizedBoxH5,
                    FittedBox(
                      child: Text(
                        "EP ${anime.totalEpisodes ?? "?"}, ${anime.status ?? ""}"
                            .toUpperCase(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
