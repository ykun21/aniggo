import 'package:aniggo/src/constants/constants.dart';
import 'package:flutter/material.dart';

class FilterChipWidget extends StatelessWidget {
  const FilterChipWidget({
    Key? key,
    required this.title,
    required this.onClearAll,
    required this.options,
    this.canClear = false,
  }) : super(key: key);

  final String title;
  final Widget options;
  final Function()? onClearAll;
  final bool canClear;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(title, style: Theme.of(context).textTheme.titleLarge),
          isThreeLine: false,
          trailing: canClear
              ? IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: onClearAll ?? () {},
                  icon: const Icon(Icons.clear_all_outlined))
              : const SizedBox.shrink(),
        ),
        Padding(
          padding: AppDimens.defPadH16,
          child: options,
        )
      ],
    );
  }
}
