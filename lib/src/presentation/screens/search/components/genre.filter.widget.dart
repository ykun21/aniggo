import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:flutter/material.dart';

import 'filterchip.widget.dart';

class GenreFilterWidget extends StatelessWidget {
  const GenreFilterWidget({super.key, required this.pref});

  final SearchAnimeChangeNotifier pref;
  @override
  Widget build(BuildContext context) {
    return FilterChipWidget(
        title: 'Genres',
        onClearAll: () => pref.clearAllGenres(),
        canClear: pref.isGenresNotEmpty,
        options: Wrap(
          spacing: 10,
          children: [
            ...Configs.animeGenres
                .map(
                  (option) => FilterChip(
                    label: Text(option.name),
                    onSelected: (_) => pref.toggleGenre(option),
                    selected: pref.isGenreSelected(option),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
