import 'package:aniggo/src/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'storage.service.impl.dart';

final storageServiceProvider = Provider<StorageService>((ref) => Storage());
