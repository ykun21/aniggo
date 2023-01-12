import 'package:aniggo/src/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? error;
  final Function()? callback;
  const CustomErrorWidget({super.key, this.error, this.callback});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppDimens.defPad,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.sentiment_dissatisfied_outlined, size: 80),
            AppDimens.sizedBoxH10,
            Text(error ?? "Something went wrong!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall),
            AppDimens.sizedBoxH10,
            if (callback != null)
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      maximumSize: const Size(200, 50)),
                  onPressed: callback,
                  icon: const Icon(Icons.replay_outlined),
                  label: const Text("Retry")),
            AppDimens.sizedBoxH20,
          ],
        ),
      ),
    );
  }
}
