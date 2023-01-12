import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderPrefs extends ConsumerWidget {
  const ProviderPrefs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providePref = ref.watch(appSettingsProvider);
    return ListTile(
      trailing: Icon(Icons.public_outlined,
          color: Theme.of(context).colorScheme.primary),
      title: const Text("Provider"),
      subtitle: Text("Current provider is ${providePref.provider}"),
      onTap: () => showDialog<void>(
          context: context,
          builder: ((context) => const ProviderSelectorDialog())),
    );
  }
}

class ProviderSelectorDialog extends ConsumerWidget {
  const ProviderSelectorDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providePref = ref.watch(appSettingsProvider);

    setProvider(val) {
      ref.read(appSettingsProvider).setProvider(site: val);
      Navigator.pop(context);
    }

    return AlertDialog(
      title: const Text("Providers"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ...Configs.providerSites
              .map((String site) => RadioListTile<String>(
                  value: site,
                  title: Text(site),
                  groupValue: providePref.provider,
                  onChanged: (String? val) => setProvider(val)))
              .toList()
        ],
      ),
    );
  }
}
