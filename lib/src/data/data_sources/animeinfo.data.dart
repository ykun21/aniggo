import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/data/data.dart';
import 'package:aniggo/src/data/repositories/http_service.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:dio/dio.dart';

class AnimeInfoData implements AnimeInfoRepository {
  final HttpService dio;
  final String provider;
  AnimeInfoData(this.dio, this.provider);

  @override
  Future<AnimeInfoModel?> getAnimeInfo(
      {required String id, CancelToken? cancelToken}) async {
    final response = await dio.get("${Configs.infoUrl}/$id",
        queryParameters: {"provider": provider}, cancelToken: cancelToken);
    return AnimeInfoModel.fromJson(response);
  }

  @override
  Future<EpisodeUrl?> getEpisodeUrl(
      {required String episodeId, CancelToken? cancelToken}) async {
    final response = await dio.get("${Configs.watchUrl}/$episodeId",
        queryParameters: {"provider": provider}, cancelToken: cancelToken);
    return EpisodeUrl.fromJson(response);
  }
}
