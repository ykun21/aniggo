import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/components.dart';

class SearchPreferenceScreen extends ConsumerStatefulWidget {
  const SearchPreferenceScreen({super.key});

  @override
  ConsumerState<SearchPreferenceScreen> createState() =>
      _SearchPreferenceScreenState();
}

class _SearchPreferenceScreenState
    extends ConsumerState<SearchPreferenceScreen> {
  @override
  Widget build(BuildContext context) {
    /// watch [searchPreferenceProvider] provider
    final searchProvider = ref.watch(searchAnimeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
        actions: [
          IconButton(
              onPressed: () {
                searchProvider.reset();
                Navigator.pop(context);
              },
              tooltip: "Reset",
              icon: const Icon(Icons.restart_alt_outlined))
        ],
      ),
      body: ListView(
        children: [
          GenreFilterWidget(pref: searchProvider),
          const Divider(),
          StatusFilterWidget(pref: searchProvider),
          const Divider(),
          SeasonFilterWidget(pref: searchProvider),
          const Divider(),
          FormatFilterWidget(pref: searchProvider),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
          searchProvider.pageController.refresh();
        },
        icon: const Icon(Icons.done_all_outlined),
        label: const Text("Apply"),
      ),
    );
  }
}
