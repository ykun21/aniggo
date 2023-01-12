import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:aniggo/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreenHeader extends ConsumerWidget {
  const SearchScreenHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchProvider = ref.watch(searchAnimeProvider);
    final readProvider = ref.read(searchAnimeProvider);
    return SliverAppBar(
      pinned: true,
      floating: true,
      snap: true,
      title: TextFormField(
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: watchProvider.queryController,
        onFieldSubmitted: (_) => readProvider.onQuerySubmit(),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Search....",
          filled: true,
          contentPadding: AppDimens.defPad,
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                  onPressed: () => readProvider.onQueryClear(),
                  icon: const Icon(Icons.close)),
              IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, RouteNames.searchFilters),
                icon: Icon(
                  watchProvider.isFilterApplied
                      ? Icons.filter_list
                      : Icons.filter_list_outlined,
                  color: watchProvider.isFilterApplied
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
              )
            ],
          ),
        ),
      ),
      toolbarHeight: kTextTabBarHeight * 1.6,
    );
  }
}
