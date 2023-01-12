import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/data/data.dart';
import 'package:aniggo/src/data/repositories/http_service.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeDataProvider =
    Provider<HomeData>((ref) => HomeData(ref.read(httpServiceProvider)));

class HomeData implements HomeRepository {
  final HttpService dio;
  HomeData(this.dio);

  @override
  Future<AnimeModel> getPopularAnimes() async {
    final response = await dio.get(Configs.popularUrl);
    return AnimeModel.fromJson(response);
  }

  @override
  Future<AnimeModel> getTrendingAnimes() async {
    final response = await dio.get(Configs.trendingUrl);
    return AnimeModel.fromJson(response);
  }
}
