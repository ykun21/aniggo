import 'package:aniggo/src/services/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClearCachePreferenceTile extends ConsumerWidget {
  const ClearCachePreferenceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.read(storageServiceProvider);

    deleteDB() async {
      await storage.clear();
    }

    return ListTile(
      trailing: Icon(Icons.delete_sweep_outlined,
          color: Theme.of(context).colorScheme.primary),
      title: const Text("Clear Cache"),
      subtitle: const Text("Delete API and image cache"),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text("Are you sure?"),
                  content: const Text(
                      "Warning!\nAll cached response, images will be deleted"),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancle")),
                    TextButton(
                        onPressed: () =>
                            deleteDB().then((_) => Navigator.pop(context)),
                        child: const Text("Sure")),
                  ],
                ));
      },
    );
  }
}
