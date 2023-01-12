import 'dart:async';

import 'package:aniggo/src/data/repositories/repositories.dart';
import 'package:aniggo/src/myapp.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize data store
  runZonedGuarded<Future<void>>(() async {
    // Hive-specific initialization
    await Hive.initFlutter();
    final StorageService initializedStorageService = Storage();
    await initializedStorageService.init();

    final db = await Database.makeDefault();
    await db.migration(storage: initializedStorageService);

    runApp(
      ProviderScope(overrides: [
        dataBaseProvider.overrideWithValue(db),
        storageServiceProvider.overrideWithValue(initializedStorageService),
      ], child: const MyApp()),
    );
  },
      // ignore: only_throw_errors
      (e, _) => throw e);
}
