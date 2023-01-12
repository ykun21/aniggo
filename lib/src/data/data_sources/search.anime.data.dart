import 'package:aniggo/src/constants/configs.dart';
import 'package:aniggo/src/data/data.dart';
import 'package:aniggo/src/data/repositories/http_service.dart';
import 'package:aniggo/src/domain/models/models.dart';
import 'package:aniggo/src/services/http/http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchAnimeDataProvider = Provider.autoDispose<SearchAnimeData>(
    (ref) => SearchAnimeData(ref.read(httpServiceProvider)));

class SearchAnimeData implements SearchAnimeRepository {
  final HttpService dio;
  SearchAnimeData(this.dio);
  @override
  Future<SearchAnimeModel> getSearchAnime(
      {Map<String, dynamic>? queryParameters}) async {
    final response =
        await dio.get(Configs.searchUrl, queryParameters: queryParameters);
    return SearchAnimeModel.fromJson(response);
  }
}
