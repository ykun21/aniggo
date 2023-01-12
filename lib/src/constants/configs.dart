import 'package:aniggo/src/domain/domain.dart';
import 'package:flutter/animation.dart';

import 'constants.dart';

class Configs {
  Configs._();

  static const int databaseVersion = 1;
  static const String databaseVersionKey = "dbVersionKey";

  /// keys
  static const Duration maxCacheAge = Duration(minutes: 30);

  static const String dioCacheForceRefreshKey = 'dio_cache_force_refresh_key';
  // Theme key to store and retrieve user preferred theme
  static const String themeModeKey = "theme";
  // Provider key to store and retrieve user preferred provider
  static const String providerKey = "provider";
  // Appcolor key to store and retrieve user preferred appcolor
  static const String appColorKey = "appColor";

  /// API domain url
  static const String domainUrl = "https://api.consumet.org/";
  static const String metaUrl = "meta/anilist/";
  static const String baseUrl = domainUrl + metaUrl;
  static const String trendingUrl = "trending";
  static const String popularUrl = "popular";
  static const String searchUrl = "advanced-search";
  static const String infoUrl = "info";
  static const String watchUrl = "watch";

  /// app colors
  static const List<Map<String, Color>> appColors = [
    {"Aniggo": AppThemeData.primaryColor},
    {"Anilist": Color(0xff3577ff)},
    {"Zoro": Color(0xFFcae962)},
    {"9anime": Color(0xFF5a2e98)},
    {"Animepahe": Color(0xFFd5015b)},
    {"Animefox": Color(0xFFf8af3f)},
  ];

  /// Anime providers
  static const String siteGogo = "gogoanime";
  static const String siteZoro = "zoro";
  static const String siteAnimePahe = "animePahe";
  static const String siteNineAnime = "9anime";
  static const String siteAnimeFox = "animefox";
  static const String siteAniMixPlay = "animixplay";
  static const String siteEnime = "enime";

  /// List of anime providers
  static const List<String> providerSites = [
    siteZoro,
    siteAnimePahe,
    siteGogo,
  ];

  static const List<AnimePreferenceModel> animeSeasons = [
    AnimePreferenceModel(id: 0, name: "WINTER"),
    AnimePreferenceModel(id: 1, name: "SPRING"),
    AnimePreferenceModel(id: 2, name: "SUMMER"),
    AnimePreferenceModel(id: 3, name: "FALL"),
  ];

  static const List<AnimePreferenceModel> animeFormats = [
    AnimePreferenceModel(id: 0, name: "TV"),
    AnimePreferenceModel(id: 1, name: "TV_SHORT"),
    AnimePreferenceModel(id: 2, name: "OVA"),
    AnimePreferenceModel(id: 3, name: "ONA"),
    AnimePreferenceModel(id: 4, name: "MOVIE"),
    AnimePreferenceModel(id: 5, name: "SPECIAL"),
    AnimePreferenceModel(id: 6, name: "MUSIC"),
  ];

  static const List<AnimePreferenceModel> animeGenres = [
    AnimePreferenceModel(id: 0, name: "Action"),
    AnimePreferenceModel(id: 1, name: "Adventure"),
    AnimePreferenceModel(id: 2, name: "Cars"),
    AnimePreferenceModel(id: 3, name: "Comedy"),
    AnimePreferenceModel(id: 4, name: "Drama"),
    AnimePreferenceModel(id: 5, name: "Fantasy"),
    AnimePreferenceModel(id: 6, name: "Horror"),
    AnimePreferenceModel(id: 7, name: "Mahou Shoujo"),
    AnimePreferenceModel(id: 8, name: "Mecha"),
    AnimePreferenceModel(id: 9, name: "Music"),
    AnimePreferenceModel(id: 10, name: "Mystery"),
    AnimePreferenceModel(id: 11, name: "Psychological"),
    AnimePreferenceModel(id: 12, name: "Romance"),
    AnimePreferenceModel(id: 13, name: "Sci-Fi"),
    AnimePreferenceModel(id: 14, name: "Slice of Life"),
    AnimePreferenceModel(id: 15, name: "Sports"),
    AnimePreferenceModel(id: 16, name: "Supernatural"),
    AnimePreferenceModel(id: 17, name: "Thriller"),
  ];

  static const List<AnimePreferenceModel> animeStatus = [
    AnimePreferenceModel(id: 0, name: "RELEASING"),
    AnimePreferenceModel(id: 1, name: "NOT_YET_RELEASED"),
    AnimePreferenceModel(id: 2, name: "FINISHED"),
    AnimePreferenceModel(id: 3, name: "CANCELLED"),
    AnimePreferenceModel(id: 3, name: "HIATUS"),
  ];
}
