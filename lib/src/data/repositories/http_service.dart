import 'package:dio/dio.dart';

/// Http Service Interface
abstract class HttpService {
  /// Http base url
  String get baseUrl;

  /// Http headers
  Map<String, String> get headers;

  /// Http get request
  Future<Map<String, dynamic>> get(String endpoint,
      {Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      bool forceRefresh = false});

  /// Http post request
  Future<dynamic> post(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });
}
