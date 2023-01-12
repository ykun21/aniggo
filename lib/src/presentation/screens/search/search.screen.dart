import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/search.anime.list.dart';
import 'components/search.header.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: const [
          SearchScreenHeader(),
          SliverToBoxAdapter(child: AppDimens.sizedBoxH5),
          SearchAnimeList()
        ],
      ),
      floatingActionButton:
          ScrollToTopButton(scrollController: scrollController),
    );
  }
}
