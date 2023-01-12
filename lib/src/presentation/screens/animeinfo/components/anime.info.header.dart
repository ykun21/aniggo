import 'dart:ui';

import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeInfoHeader extends StatelessWidget {
  const AnimeInfoHeader({super.key, required this.anime, required this.tag});
  final AnimeResults anime;
  final String tag;

  @override
  Widget build(BuildContext context) {
    const double height = 350;
    return Center(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                height: height,
                width: Responsive.width(context),
                decoration: BoxDecoration(
                  border: Border.all(width: 0, color: Colors.transparent),
                  image: DecorationImage(
                      filterQuality: FilterQuality.low,
                      image: CachedNetworkImageProvider(
                          anime.cover ?? anime.image!),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Container(
              height: height,
              color: Theme.of(context).colorScheme.background.withOpacity(0.9),
              alignment: Alignment.center),
          Positioned(
            bottom: -1,
            child: Container(
              height: height,
              width: Responsive.width(context),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.background,
                        Colors.transparent
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: const [0, 1])),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 1,
            left: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppDimens.sizedBoxW15,
                Hero(
                  tag: tag,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppDimens.defRadius4),
                    child: CachedNetworkImage(
                        height: height - 150,
                        width: 145,
                        fit: BoxFit.cover,
                        imageUrl: anime.image ?? anime.cover!),
                  ),
                ),
                AppDimens.sizedBoxW15,
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "${anime.title?.english ?? anime.title?.native ?? anime.title?.romaji ?? anime.title?.romaji}",
                          maxLines: 3,
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      AppDimens.sizedBoxH10,
                      Text("Year : ${anime.releaseDate.toString()}",
                          textAlign: TextAlign.start),
                      AppDimens.sizedBoxH5,
                      Text("Rating : ${anime.rating ?? "?"} / 100",
                          textAlign: TextAlign.start),
                      AppDimens.sizedBoxH5,
                      Text("Status : ${anime.status ?? "unknown"}",
                          textAlign: TextAlign.start),
                      AppDimens.sizedBoxH5,
                      Text("Format : ${anime.type ?? "unknown"}",
                          textAlign: TextAlign.start),
                    ],
                  ),
                ),
                AppDimens.sizedBoxW15,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
