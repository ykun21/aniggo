import 'package:freezed_annotation/freezed_annotation.dart';
part 'episode_url.g.dart';
part 'episode_url.freezed.dart';

@freezed
class EpisodeUrl with _$EpisodeUrl {
  const factory EpisodeUrl({
    Map<String, String>? headers,
    List<Source>? sources,
    List<Subtitle>? subtitles,
    Intro? intro,
  }) = _EpisodeUrl;

  factory EpisodeUrl.fromJson(Map<String, dynamic> json) =>
      _$EpisodeUrlFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    String? url,
    String? quality,
    bool? isM3U8,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

@freezed
class Subtitle with _$Subtitle {
  const factory Subtitle({
    String? url,
    String? lang,
  }) = _Subtitle;

  factory Subtitle.fromJson(Map<String, dynamic> json) =>
      _$SubtitleFromJson(json);
}

@freezed
class Intro with _$Intro {
  const factory Intro({
    int? start,
    int? end,
  }) = _Intro;

  factory Intro.fromJson(Map<String, dynamic> json) => _$IntroFromJson(json);
}
