import 'package:aniggo/src/data/repositories/http_service.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider that maps an [HttpService] interface to implementation
final httpServiceProvider = Provider<HttpService>((ref) {
  final storageService = ref.watch(storageServiceProvider);

  return DioHttpService(storageService);
});
