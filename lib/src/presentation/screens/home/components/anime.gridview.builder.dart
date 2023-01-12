import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AnimeGridViewBuilder extends StatelessWidget {
  final List<AnimeResults>? anime;
  const AnimeGridViewBuilder({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: AppDimens.defPadH12,
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 360,
            crossAxisCount: getCrossAxisCount(context)),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) => AnimeCard(anime: anime![index]),
          childCount: anime?.length,
        ),
      ),
    );
  }
}
