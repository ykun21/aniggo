import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:flutter/material.dart';

import 'filterchip.widget.dart';

class FormatFilterWidget extends StatelessWidget {
  const FormatFilterWidget({super.key, required this.pref});

  final SearchAnimeChangeNotifier pref;
  @override
  Widget build(BuildContext context) {
    return FilterChipWidget(
        title: 'Format',
        onClearAll: () => pref.clearAllFormats(),
        canClear: pref.isFormatsNotEmpty,
        options: Wrap(
          spacing: 10,
          children: [
            ...Configs.animeFormats
                .map(
                  (option) => FilterChip(
                    label: Text(option.name.replaceAndCapitalize()),
                    onSelected: (_) => pref.toggleFormat(option),
                    selected: pref.isFormatSelected(option),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
