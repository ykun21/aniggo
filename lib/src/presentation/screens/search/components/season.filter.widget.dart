import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:flutter/material.dart';

import 'filterchip.widget.dart';

class SeasonFilterWidget extends StatelessWidget {
  const SeasonFilterWidget({super.key, required this.pref});

  final SearchAnimeChangeNotifier pref;
  @override
  Widget build(BuildContext context) {
    return FilterChipWidget(
        title: 'Seasons',
        onClearAll: () => pref.clearAllSeason(),
        canClear: pref.isSeasonsNotEmpty,
        options: Wrap(
          spacing: 10,
          children: [
            ...Configs.animeSeasons
                .map(
                  (option) => FilterChip(
                    label: Text(option.name.capitalize()),
                    onSelected: (_) => pref.toggleSeason(option),
                    selected: pref.isSeasonSelected(option),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
