import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppThemePreferenceTile extends ConsumerWidget {
  const AppThemePreferenceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(appSettingsProvider).themeMode;

    setTheme(val) {
      ref.read(appSettingsProvider.notifier).setTheme(val);
      Navigator.pop(context);
    }

    return ListTile(
      trailing: Icon(
          notifier == ThemeMode.light
              ? Icons.dark_mode_outlined
              : Icons.dark_mode,
          color: Theme.of(context).colorScheme.primary),
      title: const Text("App theme"),
      subtitle: Text(notifier == ThemeMode.light
          ? "Light theme"
          : notifier == ThemeMode.dark
              ? "Dark theme"
              : "Follow system"),
      onTap: () {
        showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Themes"),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Flexible(
                      child: RadioListTile<ThemeMode>(
                          value: ThemeMode.dark,
                          title: const Text("Dark Mode"),
                          groupValue: notifier,
                          onChanged: (val) {
                            if (val != null) setTheme(val);
                          }),
                    ),
                    Flexible(
                      child: RadioListTile<ThemeMode>(
                          value: ThemeMode.light,
                          title: const Text("Light Mode"),
                          groupValue: notifier,
                          onChanged: (val) {
                            if (val != null) setTheme(val);
                          }),
                    ),
                    Flexible(
                      child: RadioListTile<ThemeMode>(
                          value: ThemeMode.system,
                          title: const Text("Follow system"),
                          groupValue: notifier,
                          onChanged: (val) {
                            if (val != null) setTheme(val);
                          }),
                    )
                  ],
                ),
              );
            });
      },
    );
  }
}
