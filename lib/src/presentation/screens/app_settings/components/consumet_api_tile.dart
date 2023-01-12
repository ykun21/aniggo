import 'package:aniggo/src/constants/constants.dart';
import 'package:flutter/material.dart';

class ConsumetApiTile extends StatelessWidget {
  const ConsumetApiTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Consumet API"),
      subtitle: const Text(
          "Consumet is a search engine APIs for accessing information and links for various entertertainment mediums like movies, books, anime, etc."),
      trailing: Icon(Icons.public_outlined,
          color: Theme.of(context).colorScheme.primary),
      onTap: () => launchHTTPurl("https://consumet.org"),
    );
  }
}
