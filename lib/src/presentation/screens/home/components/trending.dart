import 'package:aniggo/src/constants/dimens.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/responsive.dart';
import 'package:aniggo/src/routes/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TrendingAnime extends StatelessWidget {
  final AnimeModel? anime;
  const TrendingAnime({super.key, this.anime});

  @override
  Widget build(BuildContext context) {
    var data = anime?.results ?? [];
    return CarouselSlider.builder(
      itemCount: data.length,
      options: CarouselOptions(
          height: 300,
          aspectRatio: 16 / 9,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          initialPage: 1,
          autoPlayCurve: Curves.easeInCubic),
      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
        var anime = data[index];

        return SizedBox(
          height: 300,
          child: InkWell(
            borderRadius: BorderRadius.circular(AppDimens.defRadius4),
            onTap: () => Navigator.pushNamed(
              context,
              RouteNames.info,
              arguments: AnimeInfoScreenArguments(
                  anime, "${anime.image}-${anime.cover}-${anime.id}-$index"),
            ),
            child: Stack(
              children: [
                Hero(
                  tag: "${anime.image}-${anime.cover}-${anime.id}-$index",
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppDimens.defRadius4),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(anime.cover!))),
                  ),
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppDimens.defRadius4),
                      gradient: const LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )),
                ),
                Positioned(
                  left: 12,
                  bottom: 2,
                  right: 8,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                "${anime.title?.english ?? anime.title?.native ?? anime.title?.romaji ?? anime.title?.romaji}",
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                            Text(
                                "${anime.releaseDate.toString()}, EP ${anime.totalEpisodes ?? "?"}, ${anime.status?.toUpperCase() ?? "?"}",
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(color: Colors.white)),
                            if (Responsive.isDesktop(context) ||
                                Responsive.isTablet(context))
                              AppDimens.sizedBoxH10,
                            if (Responsive.isDesktop(context) ||
                                Responsive.isTablet(context))
                              Text("${anime.description}",
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.white)),
                            AppDimens.sizedBoxH10,
                          ],
                        ),
                      ),
                      AppDimens.sizedBoxW20,
                      const Icon(Icons.arrow_right_alt, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
