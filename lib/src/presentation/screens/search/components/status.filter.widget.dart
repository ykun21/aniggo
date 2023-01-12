import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:flutter/material.dart';

import 'filterchip.widget.dart';

class StatusFilterWidget extends StatelessWidget {
  const StatusFilterWidget({super.key, required this.pref});

  final SearchAnimeChangeNotifier pref;
  @override
  Widget build(BuildContext context) {
    return FilterChipWidget(
        title: 'Status',
        onClearAll: () => pref.clearAllStatus(),
        canClear: pref.isStatusNotEmpty,
        options: Wrap(
          spacing: 10,
          children: [
            ...Configs.animeStatus
                .map(
                  (option) => FilterChip(
                    label: Text(option.name.replaceAndCapitalize()),
                    onSelected: (_) => pref.toggleStatus(option),
                    selected: pref.isStatusSelected(option),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
