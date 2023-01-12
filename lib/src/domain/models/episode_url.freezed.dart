// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeUrl _$EpisodeUrlFromJson(Map<String, dynamic> json) {
  return _EpisodeUrl.fromJson(json);
}

/// @nodoc
mixin _$EpisodeUrl {
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  List<Source>? get sources => throw _privateConstructorUsedError;
  List<Subtitle>? get subtitles => throw _privateConstructorUsedError;
  Intro? get intro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeUrlCopyWith<EpisodeUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeUrlCopyWith<$Res> {
  factory $EpisodeUrlCopyWith(
          EpisodeUrl value, $Res Function(EpisodeUrl) then) =
      _$EpisodeUrlCopyWithImpl<$Res, EpisodeUrl>;
  @useResult
  $Res call(
      {Map<String, String>? headers,
      List<Source>? sources,
      List<Subtitle>? subtitles,
      Intro? intro});

  $IntroCopyWith<$Res>? get intro;
}

/// @nodoc
class _$EpisodeUrlCopyWithImpl<$Res, $Val extends EpisodeUrl>
    implements $EpisodeUrlCopyWith<$Res> {
  _$EpisodeUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? sources = freezed,
    Object? subtitles = freezed,
    Object? intro = freezed,
  }) {
    return _then(_value.copyWith(
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      subtitles: freezed == subtitles
          ? _value.subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<Subtitle>?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as Intro?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntroCopyWith<$Res>? get intro {
    if (_value.intro == null) {
      return null;
    }

    return $IntroCopyWith<$Res>(_value.intro!, (value) {
      return _then(_value.copyWith(intro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EpisodeUrlCopyWith<$Res>
    implements $EpisodeUrlCopyWith<$Res> {
  factory _$$_EpisodeUrlCopyWith(
          _$_EpisodeUrl value, $Res Function(_$_EpisodeUrl) then) =
      __$$_EpisodeUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String>? headers,
      List<Source>? sources,
      List<Subtitle>? subtitles,
      Intro? intro});

  @override
  $IntroCopyWith<$Res>? get intro;
}

/// @nodoc
class __$$_EpisodeUrlCopyWithImpl<$Res>
    extends _$EpisodeUrlCopyWithImpl<$Res, _$_EpisodeUrl>
    implements _$$_EpisodeUrlCopyWith<$Res> {
  __$$_EpisodeUrlCopyWithImpl(
      _$_EpisodeUrl _value, $Res Function(_$_EpisodeUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? sources = freezed,
    Object? subtitles = freezed,
    Object? intro = freezed,
  }) {
    return _then(_$_EpisodeUrl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      subtitles: freezed == subtitles
          ? _value._subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<Subtitle>?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as Intro?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeUrl implements _EpisodeUrl {
  const _$_EpisodeUrl(
      {final Map<String, String>? headers,
      final List<Source>? sources,
      final List<Subtitle>? subtitles,
      this.intro})
      : _headers = headers,
        _sources = sources,
        _subtitles = subtitles;

  factory _$_EpisodeUrl.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeUrlFromJson(json);

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Source>? _sources;
  @override
  List<Source>? get sources {
    final value = _sources;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Subtitle>? _subtitles;
  @override
  List<Subtitle>? get subtitles {
    final value = _subtitles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Intro? intro;

  @override
  String toString() {
    return 'EpisodeUrl(headers: $headers, sources: $sources, subtitles: $subtitles, intro: $intro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeUrl &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality()
                .equals(other._subtitles, _subtitles) &&
            (identical(other.intro, intro) || other.intro == intro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(_subtitles),
      intro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodeUrlCopyWith<_$_EpisodeUrl> get copyWith =>
      __$$_EpisodeUrlCopyWithImpl<_$_EpisodeUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeUrlToJson(
      this,
    );
  }
}

abstract class _EpisodeUrl implements EpisodeUrl {
  const factory _EpisodeUrl(
      {final Map<String, String>? headers,
      final List<Source>? sources,
      final List<Subtitle>? subtitles,
      final Intro? intro}) = _$_EpisodeUrl;

  factory _EpisodeUrl.fromJson(Map<String, dynamic> json) =
      _$_EpisodeUrl.fromJson;

  @override
  Map<String, String>? get headers;
  @override
  List<Source>? get sources;
  @override
  List<Subtitle>? get subtitles;
  @override
  Intro? get intro;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeUrlCopyWith<_$_EpisodeUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  String? get url => throw _privateConstructorUsedError;
  String? get quality => throw _privateConstructorUsedError;
  bool? get isM3U8 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res, Source>;
  @useResult
  $Res call({String? url, String? quality, bool? isM3U8});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res, $Val extends Source>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? quality = freezed,
    Object? isM3U8 = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      isM3U8: freezed == isM3U8
          ? _value.isM3U8
          : isM3U8 // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourceCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$_SourceCopyWith(_$_Source value, $Res Function(_$_Source) then) =
      __$$_SourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? quality, bool? isM3U8});
}

/// @nodoc
class __$$_SourceCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$_Source>
    implements _$$_SourceCopyWith<$Res> {
  __$$_SourceCopyWithImpl(_$_Source _value, $Res Function(_$_Source) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? quality = freezed,
    Object? isM3U8 = freezed,
  }) {
    return _then(_$_Source(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      isM3U8: freezed == isM3U8
          ? _value.isM3U8
          : isM3U8 // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Source implements _Source {
  const _$_Source({this.url, this.quality, this.isM3U8});

  factory _$_Source.fromJson(Map<String, dynamic> json) =>
      _$$_SourceFromJson(json);

  @override
  final String? url;
  @override
  final String? quality;
  @override
  final bool? isM3U8;

  @override
  String toString() {
    return 'Source(url: $url, quality: $quality, isM3U8: $isM3U8)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Source &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.isM3U8, isM3U8) || other.isM3U8 == isM3U8));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, quality, isM3U8);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceCopyWith<_$_Source> get copyWith =>
      __$$_SourceCopyWithImpl<_$_Source>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceToJson(
      this,
    );
  }
}

abstract class _Source implements Source {
  const factory _Source(
      {final String? url,
      final String? quality,
      final bool? isM3U8}) = _$_Source;

  factory _Source.fromJson(Map<String, dynamic> json) = _$_Source.fromJson;

  @override
  String? get url;
  @override
  String? get quality;
  @override
  bool? get isM3U8;
  @override
  @JsonKey(ignore: true)
  _$$_SourceCopyWith<_$_Source> get copyWith =>
      throw _privateConstructorUsedError;
}

Subtitle _$SubtitleFromJson(Map<String, dynamic> json) {
  return _Subtitle.fromJson(json);
}

/// @nodoc
mixin _$Subtitle {
  String? get url => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtitleCopyWith<Subtitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleCopyWith<$Res> {
  factory $SubtitleCopyWith(Subtitle value, $Res Function(Subtitle) then) =
      _$SubtitleCopyWithImpl<$Res, Subtitle>;
  @useResult
  $Res call({String? url, String? lang});
}

/// @nodoc
class _$SubtitleCopyWithImpl<$Res, $Val extends Subtitle>
    implements $SubtitleCopyWith<$Res> {
  _$SubtitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubtitleCopyWith<$Res> implements $SubtitleCopyWith<$Res> {
  factory _$$_SubtitleCopyWith(
          _$_Subtitle value, $Res Function(_$_Subtitle) then) =
      __$$_SubtitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? lang});
}

/// @nodoc
class __$$_SubtitleCopyWithImpl<$Res>
    extends _$SubtitleCopyWithImpl<$Res, _$_Subtitle>
    implements _$$_SubtitleCopyWith<$Res> {
  __$$_SubtitleCopyWithImpl(
      _$_Subtitle _value, $Res Function(_$_Subtitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_Subtitle(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subtitle implements _Subtitle {
  const _$_Subtitle({this.url, this.lang});

  factory _$_Subtitle.fromJson(Map<String, dynamic> json) =>
      _$$_SubtitleFromJson(json);

  @override
  final String? url;
  @override
  final String? lang;

  @override
  String toString() {
    return 'Subtitle(url: $url, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subtitle &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubtitleCopyWith<_$_Subtitle> get copyWith =>
      __$$_SubtitleCopyWithImpl<_$_Subtitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubtitleToJson(
      this,
    );
  }
}

abstract class _Subtitle implements Subtitle {
  const factory _Subtitle({final String? url, final String? lang}) =
      _$_Subtitle;

  factory _Subtitle.fromJson(Map<String, dynamic> json) = _$_Subtitle.fromJson;

  @override
  String? get url;
  @override
  String? get lang;
  @override
  @JsonKey(ignore: true)
  _$$_SubtitleCopyWith<_$_Subtitle> get copyWith =>
      throw _privateConstructorUsedError;
}

Intro _$IntroFromJson(Map<String, dynamic> json) {
  return _Intro.fromJson(json);
}

/// @nodoc
mixin _$Intro {
  int? get start => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntroCopyWith<Intro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroCopyWith<$Res> {
  factory $IntroCopyWith(Intro value, $Res Function(Intro) then) =
      _$IntroCopyWithImpl<$Res, Intro>;
  @useResult
  $Res call({int? start, int? end});
}

/// @nodoc
class _$IntroCopyWithImpl<$Res, $Val extends Intro>
    implements $IntroCopyWith<$Res> {
  _$IntroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntroCopyWith<$Res> implements $IntroCopyWith<$Res> {
  factory _$$_IntroCopyWith(_$_Intro value, $Res Function(_$_Intro) then) =
      __$$_IntroCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? start, int? end});
}

/// @nodoc
class __$$_IntroCopyWithImpl<$Res> extends _$IntroCopyWithImpl<$Res, _$_Intro>
    implements _$$_IntroCopyWith<$Res> {
  __$$_IntroCopyWithImpl(_$_Intro _value, $Res Function(_$_Intro) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Intro(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Intro implements _Intro {
  const _$_Intro({this.start, this.end});

  factory _$_Intro.fromJson(Map<String, dynamic> json) =>
      _$$_IntroFromJson(json);

  @override
  final int? start;
  @override
  final int? end;

  @override
  String toString() {
    return 'Intro(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Intro &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntroCopyWith<_$_Intro> get copyWith =>
      __$$_IntroCopyWithImpl<_$_Intro>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntroToJson(
      this,
    );
  }
}

abstract class _Intro implements Intro {
  const factory _Intro({final int? start, final int? end}) = _$_Intro;

  factory _Intro.fromJson(Map<String, dynamic> json) = _$_Intro.fromJson;

  @override
  int? get start;
  @override
  int? get end;
  @override
  @JsonKey(ignore: true)
  _$$_IntroCopyWith<_$_Intro> get copyWith =>
      throw _privateConstructorUsedError;
}
