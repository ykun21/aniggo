// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeUrl _$$_EpisodeUrlFromJson(Map<String, dynamic> json) =>
    _$_EpisodeUrl(
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtitles: (json['subtitles'] as List<dynamic>?)
          ?.map((e) => Subtitle.fromJson(e as Map<String, dynamic>))
          .toList(),
      intro: json['intro'] == null
          ? null
          : Intro.fromJson(json['intro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EpisodeUrlToJson(_$_EpisodeUrl instance) =>
    <String, dynamic>{
      'headers': instance.headers,
      'sources': instance.sources,
      'subtitles': instance.subtitles,
      'intro': instance.intro,
    };

_$_Source _$$_SourceFromJson(Map<String, dynamic> json) => _$_Source(
      url: json['url'] as String?,
      quality: json['quality'] as String?,
      isM3U8: json['isM3U8'] as bool?,
    );

Map<String, dynamic> _$$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'url': instance.url,
      'quality': instance.quality,
      'isM3U8': instance.isM3U8,
    };

_$_Subtitle _$$_SubtitleFromJson(Map<String, dynamic> json) => _$_Subtitle(
      url: json['url'] as String?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$$_SubtitleToJson(_$_Subtitle instance) =>
    <String, dynamic>{
      'url': instance.url,
      'lang': instance.lang,
    };

_$_Intro _$$_IntroFromJson(Map<String, dynamic> json) => _$_Intro(
      start: json['start'] as int?,
      end: json['end'] as int?,
    );

Map<String, dynamic> _$$_IntroToJson(_$_Intro instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
