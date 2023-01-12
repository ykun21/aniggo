import 'dart:async';

import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/services/sevices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favouritesProvider = StreamProvider.autoDispose<List<Favourite>>((ref) {
  //
  final controller = StreamController<List<Favourite>>();

  //
  final sub = ref.read(dataBaseProvider).getAnimes().listen((data) {
    return controller.sink.add(data);
  });

  // close stream on dispose
  ref.onDispose(() {
    sub.cancel();
    controller.close();
  });

  return controller.stream;
});

final isAnimeInLibraryProvider =
    FutureProvider.family.autoDispose<Favourite?, String>((ref, id) {
  final isFavorite = ref.read(dataBaseProvider).getAnime(id);
  return isFavorite;
});
