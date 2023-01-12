import 'package:aniggo/src/domain/domain.dart';

abstract class SearchAnimeRepository {
  const SearchAnimeRepository();

  Future<SearchAnimeModel> getSearchAnime();
}
