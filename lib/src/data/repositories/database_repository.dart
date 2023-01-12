import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/services/sevices.dart';

abstract class DatabaseRepository {
  Future<void> setAnime({required AnimeInfoModel anime});
  Stream<List<Favourite>> getAnimes();
  Future<Favourite?> getAnime(String id);
  Future<void> deleteAnime(String id);
  Future<void> addEpisode({required String id, required int episodeNumber});
  Future<void> removeEpisode({required String id, required int episodeNumber});
  Future<void> migration({required Storage storage});
  Future<void> clearDatabase();
}
