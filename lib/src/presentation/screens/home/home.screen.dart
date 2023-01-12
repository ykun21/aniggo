import 'package:aniggo/src/constants/dimens.dart';
import 'package:aniggo/src/presentation/providers/home.provider.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/components.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final watchHomeProvider = ref.watch(homeAnimeProvider);
    return Scaffold(
        body: watchHomeProvider.when(
            skipLoadingOnRefresh: false,
            data: (data) {
              return RefreshIndicator(
                onRefresh: () async =>
                    await ref.refresh(homeAnimeProvider.future),
                child: CustomScrollView(slivers: [
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    snap: true,
                    centerTitle: true,
                    title: RichText(
                      text: TextSpan(
                        text: 'Ani',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'ggo',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: TrendingAnime(anime: data.popular)),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: AppDimens.defPadH12
                          .add(const EdgeInsets.only(top: 20, bottom: 10)),
                      child: Text(
                        "All TIME POPULAR",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  ),
                  PopularAnime(anime: data.popular),
                ]),
              );
            },
            error: (err, stack) => CustomErrorWidget(
                error: "$err", callback: () => ref.refresh(homeAnimeProvider)),
            loading: () => const LoaderWidget()));
  }
}
