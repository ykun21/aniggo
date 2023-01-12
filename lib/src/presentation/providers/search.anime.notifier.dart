import 'package:aniggo/src/data/data_sources/search.anime.data.dart';
import 'package:aniggo/src/presentation/notifiers/notifiers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchAnimeProvider =
    ChangeNotifierProvider.autoDispose<SearchAnimeChangeNotifier>((ref) =>
        SearchAnimeChangeNotifier(
            searchAnimeData: ref.read(searchAnimeDataProvider)));
