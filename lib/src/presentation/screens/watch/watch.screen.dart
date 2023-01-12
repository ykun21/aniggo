import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayScreen extends ConsumerStatefulWidget {
  final Episode episode;
  const PlayScreen({super.key, required this.episode});

  @override
  ConsumerState<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends ConsumerState<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(videoStateNotifier(widget.episode));
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Text(
                "Episode ${widget.episode.number}, ${widget.episode.title ?? ""}")),
        body: state.when(
            data: (data) => BetterPlayer(controller: data),
            loading: (status) => LoaderWidget(status: status),
            error: (error, _) => CustomErrorWidget(
                  error: error.toString(),
                  callback: () =>
                      ref.refresh(videoStateNotifier(widget.episode)),
                )));
  }
}
