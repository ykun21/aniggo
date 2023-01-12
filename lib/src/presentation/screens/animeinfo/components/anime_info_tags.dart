import 'package:flutter/material.dart';

class AnimeTags extends StatelessWidget {
  const AnimeTags({Key? key, required this.genres}) : super(key: key);

  final List<String?> genres;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return genres.isEmpty
        ? const SizedBox.shrink()
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            spacing: 8,
            runSpacing: 0,
            children: List.generate(
                genres.length,
                (index) => Chip(
                    elevation: 0,
                    side: const BorderSide(width: 0, color: Colors.transparent),
                    labelStyle: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSecondaryContainer),
                    backgroundColor: theme.colorScheme.secondaryContainer,
                    label: Text(genres[index] ?? ""))));
  }
}
