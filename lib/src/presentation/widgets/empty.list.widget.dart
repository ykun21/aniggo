import 'package:aniggo/src/constants/constants.dart';
import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  final String? text;
  const EmptyListWidget({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.sentiment_dissatisfied, size: 80),
        if (text != null && text!.isNotEmpty) AppDimens.sizedBoxH15,
        if (text != null && text!.isNotEmpty)
          Text(
            text ?? "No items to show",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall,
          )
      ],
    );
  }
}
