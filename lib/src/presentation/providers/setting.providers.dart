import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appSettingsProvider = ChangeNotifierProvider<AppSettingsNotifier>(
    (ref) => AppSettingsNotifier(ref.watch(storageServiceProvider)));
