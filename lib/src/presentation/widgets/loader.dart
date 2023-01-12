import 'package:aniggo/src/constants/constants.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final String? status;
  const LoaderWidget({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppDimens.defPad24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 130),
                child: const CircularProgressIndicator()),
            if (status != null && status!.isNotEmpty) AppDimens.sizedBoxH15,
            if (status != null && status!.isNotEmpty)
              Text(
                status ?? "",
                style: Theme.of(context).textTheme.labelSmall,
              )
          ],
        ),
      ),
    );
  }
}
