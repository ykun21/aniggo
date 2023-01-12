import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:aniggo/src/presentation/screens/screens.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/components.dart';

class AnimeInfoScreen extends ConsumerStatefulWidget {
  const AnimeInfoScreen({Key? key, required this.anime, required this.tag})
      : super(key: key);
  final AnimeResults anime;
  final String tag;
  @override
  ConsumerState<AnimeInfoScreen> createState() => _AnimeInfoScreenState();
}

class _AnimeInfoScreenState extends ConsumerState<AnimeInfoScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final anime = widget.anime;
    if (anime.status != "Not yet aired") {}
    final animeInfoState = ref.watch(animeinfoDataProvider(anime.id));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: RefreshIndicator(
        onRefresh: () async =>
            await ref.refresh(animeinfoDataProvider(anime.id)),
        child: CustomScrollView(
          shrinkWrap: true,
          controller: scrollController,
          slivers: [
            SliverAppBar(
              stretch: true,
              pinned: true,
              centerTitle: false,
              floating: false,
              expandedHeight: 300,
              title: AppbarTitle(
                  text: anime.title?.english ?? anime.title?.romaji ?? ""),
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: AnimeInfoHeader(anime: anime, tag: widget.tag)),
              actions: [
                IconButton(
                    onPressed: () => showDialog<void>(
                        context: context,
                        builder: ((context) => const ProviderSelectorDialog())),
                    icon: const Icon(Icons.tune))
              ],
            ),

            /// if anime status is "Not yet aired" return error widget
            if (anime.status == "Not yet aired")
              const SliverToBoxAdapter(
                child: CustomErrorWidget(error: "No yet aired"),
              ),

            ...animeInfoState.when(
                skipLoadingOnRefresh: false,
                data: (data) => [
                      SliverList(
                          delegate: SliverChildListDelegate([
                        AnimeDescription(anime: anime),
                        const Divider(),
                        AnimeInfoActions(anime: data!),
                      ])),
                      AnimeInfoEpisodesScreen(anime: data),
                    ],
                error: (err, stack) => [
                      SliverToBoxAdapter(
                          child: CustomErrorWidget(
                              error: err.toString(),
                              callback: () =>
                                  ref.refresh(animeinfoDataProvider(anime.id))))
                    ],
                loading: () =>
                    [const SliverToBoxAdapter(child: LoaderWidget())]),
            const SliverToBoxAdapter(child: SizedBox(height: 60))
          ],
        ),
      ),
      floatingActionButton: scrollController.hasClients
          ? ScrollToTopButton(scrollController: scrollController)
          : const SizedBox.shrink(),
    );
  }
}
