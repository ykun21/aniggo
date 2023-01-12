import 'dart:developer';

import 'package:aniggo/src/data/data.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:better_player/better_player.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoPlayerNotifier extends StateNotifier<VideoPlayerState> {
  VideoPlayerNotifier({required this.episode, required this.animeInfoService})
      : super(const VideoPlayerState.loading("")) {
    init();
  }

  final Episode episode;
  final AnimeInfoData animeInfoService;

  BetterPlayerController? betterPlayerController;

  void init() async {
    state =
        const VideoPlayerState.loading("fetching episode urls from server...");
    try {
      log("init");
      if (episode.id == null) {
        state = const VideoPlayerState.error({
          "error": "Something went wrong, Please try with different provider"
        });
      }
      EpisodeUrl? episodeUrls = await getEpisodeUrl();
      if (episodeUrls != null) {
        initializePlayer(episodeUrls);
      }
    } catch (e, st) {
      log("$e");
      log("$st");
      state = VideoPlayerState.error(e);
    }
  }

  Future<EpisodeUrl?> getEpisodeUrl({bool cancelToken = false}) async {
    EpisodeUrl? episodeUrl;
    if (cancelToken) {
      final cancelToken = CancelToken();
      animeInfoService.getEpisodeUrl(
          episodeId: episode.id!, cancelToken: cancelToken);
    } else {
      episodeUrl = await animeInfoService.getEpisodeUrl(episodeId: episode.id!);
    }
    return episodeUrl;
  }

  Future<void> initializePlayer(EpisodeUrl episodeSource) async {
    state = const VideoPlayerState.loading("initialing player");
    List<Source>? sources = episodeSource.sources;
    var subtitles = episodeSource.subtitles;
    Map<String, String>? headers = {
      if (episodeSource.headers != null) ...episodeSource.headers!,
      "user-agent":
          "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0"
    };

    /// if sources is empty return error
    if (sources == null) {
      state = const VideoPlayerState.error({"error": "No source found"});
      return;
    }

    String? firstSource() {
      String? url;
      try {
        var isAuto = sources
            .firstWhere(
                (element) =>
                    element.url != null && element.quality == "auto" ||
                    element.quality == "default",
                orElse: () =>
                    sources.firstWhere((element) => element.url != null))
            .url;
        if (isAuto != null) {
          url = isAuto.toString();
        } else {
          url = sources
              .firstWhere((element) => element.url != null)
              .url
              .toString();
        }
      } catch (e) {
        state = const VideoPlayerState.error({"error": "No source found"});
      }
      return url;
    }

    /// if [sources] is not null
    ///
    try {
      var dataSource = BetterPlayerDataSource(
          BetterPlayerDataSourceType.network, firstSource()!,
          resolutions: {
            for (var item in sources) "${item.quality}": "${item.url}"
          },
          subtitles: subtitles
              ?.map((e) => BetterPlayerSubtitlesSource(
                    selectedByDefault: e.lang == "English",
                    name: e.lang,
                    type: BetterPlayerSubtitlesSourceType.network,
                    urls: [e.url],
                  ))
              .toList(),
          videoFormat:
              sources.firstWhere((element) => element.isM3U8 != null).isM3U8 ==
                      true
                  ? BetterPlayerVideoFormat.hls
                  : BetterPlayerVideoFormat.other,
          headers: headers,
          bufferingConfiguration: const BetterPlayerBufferingConfiguration(
            minBufferMs: 50000,
            maxBufferMs: 13107200,
            bufferForPlaybackMs: 2500,
            bufferForPlaybackAfterRebufferMs: 5000,
          ),
          cacheConfiguration: const BetterPlayerCacheConfiguration(
            useCache: true,
            preCacheSize: 400000,
            maxCacheSize: 400000,
            maxCacheFileSize: 400000,
          ),

          /// notification configuration
          ///
          notificationConfiguration: BetterPlayerNotificationConfiguration(
            showNotification: true,
            title: "Episode ${episode.number} ${episode.title}",
            author: episode.description,
            imageUrl: episode.image,
            activityName: "MainActivity",
          ));

      betterPlayerController =
          BetterPlayerController(betterPlayerConfiguration);

      await betterPlayerController?.setupDataSource(dataSource);

      state = VideoPlayerState.data(betterPlayerController!);
    } catch (e, st) {
      log("$e");
      log("$st");
      state = VideoPlayerState.error({
        "Something went wrong!\n Please try with different provider":
            e.toString()
      });
    }
  }

  @override
  void dispose() {
    getEpisodeUrl(cancelToken: true);
    betterPlayerController?.dispose(forceDispose: true);
    betterPlayerController?.clearCache();
    super.dispose();
  }
}

const BetterPlayerConfiguration betterPlayerConfiguration =
    BetterPlayerConfiguration(
  autoDetectFullscreenAspectRatio: true,
  fit: BoxFit.fitHeight,
  aspectRatio: 16 / 9,
  handleLifecycle: false,
  autoDetectFullscreenDeviceOrientation: true,
  autoPlay: true,
  allowedScreenSleep: false,
  autoDispose: true,
  fullScreenAspectRatio: 16 / 9,
  placeholder: SizedBox(),
  deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
  deviceOrientationsOnFullScreen: [
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft
  ],
  controlsConfiguration: BetterPlayerControlsConfiguration(
    overflowMenuIcon: Icons.settings_outlined,
    playIcon: Icons.play_arrow_outlined,
    pauseIcon: Icons.pause,
    muteIcon: Icons.volume_mute_outlined,
    unMuteIcon: Icons.volume_up_outlined,
    playbackSpeedIcon: Icons.speed_outlined,
    subtitlesIcon: Icons.subtitles_outlined,
    audioTracksIcon: Icons.audiotrack_outlined,
    playerTheme: BetterPlayerTheme.cupertino,
  ),
);
