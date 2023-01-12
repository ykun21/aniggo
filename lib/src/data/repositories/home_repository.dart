import 'package:aniggo/src/domain/domain.dart';

abstract class HomeRepository {
  const HomeRepository();
  Future<AnimeModel> getTrendingAnimes();
  Future<AnimeModel> getPopularAnimes();
}
