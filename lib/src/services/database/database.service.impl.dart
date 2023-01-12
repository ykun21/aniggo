import 'package:aniggo/src/constants/configs.dart';
import 'package:aniggo/src/data/repositories/repositories.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class Database implements DatabaseRepository {
  Database(this.isardb);
  final Isar isardb;

  static Future<Database> makeDefault() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    return Database(await Isar.open([FavouriteSchema],
        name: "favourites", directory: appDocDir.path));
  }

  @override
  Stream<List<Favourite>> getAnimes() {
    Query<Favourite> animeList =
        isardb.favourites.where(sort: Sort.asc).build();
    return animeList.watch(fireImmediately: true);
  }

  @override
  Future<void> setAnime({required AnimeInfoModel anime}) async {
    final title = FavouriteTitle()
      ..english = anime.title?.english ?? ""
      ..romaji = anime.title?.romaji ?? ""
      ..userPreferred = anime.title?.userPreferred ?? ""
      ..native = anime.title?.native ?? "";
    final newfav = Favourite()
      ..aniId = anime.id!
      ..title = title
      ..malId = anime.malId
      ..synonyms = anime.synonyms
      ..isAdult = anime.isAdult
      ..image = anime.image
      ..cover = anime.cover
      ..description = anime.description
      ..genres = anime.genres
      ..season = anime.season
      ..studios = anime.studios
      ..subOrDub = anime.subOrDub
      ..releaseDate = anime.releaseDate
      ..totalEpisodes = anime.totalEpisodes
      ..status = anime.status
      ..type = anime.type
      ..totalEpisodes = anime.totalEpisodes
      ..duration = anime.duration
      ..rating = anime.rating;

    await isardb.writeTxn(() async => await isardb.favourites.put(newfav));
  }

  @override
  Future<Favourite?> getAnime(String id) async {
    return await isardb.favourites.filter().aniIdEqualTo(id).findFirst();
  }

  @override
  Future<void> deleteAnime(String id) async {
    await isardb.writeTxn(() async {
      await isardb.favourites.filter().aniIdEqualTo(id).deleteAll();
    });
  }

  @override
  Future<void> addEpisode(
      {required String id, required int episodeNumber}) async {
    final anime = await isardb.favourites.filter().aniIdEqualTo(id).findFirst();

    if (anime != null) {
      if (!anime.viewedEpisodes.contains(episodeNumber)) {
        await isardb.writeTxn(() async {
          anime.viewedEpisodes = [...anime.viewedEpisodes, episodeNumber];
          await isardb.favourites.put(anime);
        });
      }
    }
  }

  @override
  Future<void> removeEpisode(
      {required String id, required int episodeNumber}) async {
    final anime = await isardb.favourites.filter().aniIdEqualTo(id).findFirst();

    if (anime != null) {
      if (anime.viewedEpisodes.contains(episodeNumber)) {
        await isardb.writeTxn(() async {
          var episodes = anime.viewedEpisodes.toList();
          episodes.remove(episodeNumber);
          anime.viewedEpisodes = [...episodes];
          await isardb.favourites.put(anime);
        });
      }
    }
  }

  @override
  Future<void> migration({required StorageService storage}) async {
    int savedVersion = storage.get(Configs.databaseVersionKey);

    if (savedVersion == Configs.databaseVersion) {
      debugPrint("No need to migrate");
      return;
    }

    Future<void> migrate<T>(IsarCollection<T> collection) async {
      await isardb.writeTxn(() async {
        final count = await collection.count();
        for (var i = 0; i < count; i += 50) {
          final data = await collection.where().offset(i).limit(50).findAll();
          await collection.putAll(data);
        }
      });
    }

    await Future.wait([migrate<Favourite>(isardb.favourites)]);

    // Update version
    await storage.set(Configs.databaseVersionKey, Configs.databaseVersion);
  }

  @override
  Future<void> clearDatabase() async {
    await isardb.writeTxn(() async {
      await isardb.favourites.clear();
    });
  }
}
