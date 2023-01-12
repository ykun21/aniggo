import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/data/repositories/http_service.dart';
import 'package:aniggo/src/data/repositories/repositories.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'interceptor/cache.interceptor.dart';
import 'interceptor/request.interceptor.dart';

const _defaultConnectTimeout = 30000;
const _defaultReceiveTimeout = 30000;

class DioHttpService implements HttpService {
  /// Creates new instance of [DioHttpService]
  DioHttpService(this.storageService) {
    dio = Dio(baseOptions);
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor());
    }
    dio.interceptors.add(CacheInterceptor(storageService));
    dio.interceptors.add(RequestInterceptors(dio));
  }

  /// Storage service used for caching http responses
  final StorageService storageService;

  /// The Dio Http client
  late final Dio dio;

  /// The Dio base options
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
        connectTimeout: _defaultConnectTimeout,
        receiveTimeout: _defaultReceiveTimeout,
      );

  @override
  String get baseUrl => Configs.baseUrl;

  // Default headers
  @override
  Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json'
  };

  /// GET method
  @override
  Future<Map<String, dynamic>> get(String endpoint,
      {Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      bool forceRefresh = false}) async {
    dio.options.extra[Configs.dioCacheForceRefreshKey] = forceRefresh;
    try {
      var response = await dio.get(endpoint,
          queryParameters: queryParameters, cancelToken: cancelToken);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// POST method
  @override
  Future<dynamic> post(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await dio.post(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }
}
