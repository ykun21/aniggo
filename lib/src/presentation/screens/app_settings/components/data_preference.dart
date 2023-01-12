import 'package:aniggo/src/services/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataPreferenceTile extends ConsumerWidget {
  const DataPreferenceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.read(dataBaseProvider);

    deleteDB() async {
      await db.clearDatabase();
    }

    return ListTile(
      trailing: Icon(Icons.delete_sweep_outlined,
          color: Theme.of(context).colorScheme.primary),
      title: const Text("Clear database"),
      subtitle: const Text("Favourite animes will be deleted"),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text("Are you sure?"),
                  content: const Text(
                      "Warning!\nAll the saved data will be deleted including your favourite animes"),
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
