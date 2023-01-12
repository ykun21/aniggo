import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppColorPreferenceTile extends ConsumerWidget {
  const AppColorPreferenceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColor = ref.watch(appSettingsProvider).appColor;

    setAppColor(Color color) {
      ref.read(appSettingsProvider).setAppColor(color.value);
      Navigator.pop(context);
    }

    return ListTile(
      trailing: Icon(Icons.color_lens_outlined,
          color: Theme.of(context).colorScheme.primary),
      title: const Text("App color"),
      subtitle: const Text("Change the primary color of an app"),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                title: const Text("Select app color"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(Configs.appColors.length, (index) {
                    var color = Configs.appColors[index];

                    return RadioListTile<Color>(
                        value: color.values.first,
                        title: Text(color.keys.first),
                        groupValue: appColor,
                        secondary: CircleAvatar(
                            radius: 8, backgroundColor: color.values.first),
                        onChanged: (val) {
                          if (val != null) setAppColor(color.values.first);
                        });
                  }),
                )));
      },
    );
  }
}
