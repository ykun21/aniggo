import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final videoStateNotifier = StateNotifierProvider.autoDispose
    .family<VideoPlayerNotifier, VideoPlayerState, Episode>((ref, episode) {
  final animeInfoService = ref.read(animeInfoServiceProvider);

  ref.onDispose(() {});

  return VideoPlayerNotifier(
      episode: episode, animeInfoService: animeInfoService);
});
