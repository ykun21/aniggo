import 'package:aniggo/src/constants/constants.dart';
import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  final int? rating;
  const RatingBadge({
    Key? key,
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String getRating = (rating! / 10).toStringAsFixed(1);
    return rating == null
        ? const SizedBox.shrink()
        : Container(
            padding: AppDimens.defPad,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(AppDimens.defRadius),
                  topRight: Radius.circular(AppDimens.defRadius)),
            ),
            child: Text(
              "$getRating /10",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ));
  }
}
