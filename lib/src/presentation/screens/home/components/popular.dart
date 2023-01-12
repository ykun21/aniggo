import 'package:aniggo/src/domain/domain.dart';
import 'package:flutter/material.dart';

import 'anime.gridview.builder.dart';

class PopularAnime extends StatelessWidget {
  final AnimeModel? anime;
  const PopularAnime({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return AnimeGridViewBuilder(anime: anime?.results ?? []);
  }
}
