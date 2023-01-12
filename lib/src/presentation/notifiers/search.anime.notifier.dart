import 'dart:async';
import 'dart:convert';

import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/data/data_sources/search.anime.data.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchAnimeChangeNotifier extends ChangeNotifier {
  SearchAnimeChangeNotifier({required this.searchAnimeData}) {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchApi(pageKey);
    });
  }

  final SearchAnimeData searchAnimeData;

  static const _pageSize = 10;

  final PagingController<int, SearchedResult> _pagingController =
      PagingController(firstPageKey: 0);

  final TextEditingController _queryController = TextEditingController();

  TextEditingController get queryController => _queryController;

  final List<AnimePreferenceModel> _selectedFormats = [];
  final List<AnimePreferenceModel> _selectedSeasons = [];
  final List<AnimePreferenceModel> _selectedGenres = [];
  final List<AnimePreferenceModel> _selectedStatus = [];

  PagingController<int, SearchedResult> get pageController => _pagingController;

  bool get isSeasonsNotEmpty => _selectedSeasons.isNotEmpty;

  bool get isFormatsNotEmpty => _selectedFormats.isNotEmpty;

  bool get isGenresNotEmpty => _selectedGenres.isNotEmpty;

  bool get isStatusNotEmpty => _selectedStatus.isNotEmpty;

  Timer? _debounce;

  List<String> get getListOfSeasonsString =>
      AnimePreferenceModel.nameToStringList(_selectedSeasons);

  List<String> get getListOfGenresString =>
      AnimePreferenceModel.nameToStringList(_selectedGenres);

  List<String> get getListOfFormatsString =>
      AnimePreferenceModel.nameToStringList(_selectedFormats);

  List<String> get getListOfStatusString =>
      AnimePreferenceModel.nameToStringList(_selectedStatus);

  bool get isFilterApplied =>
      isGenresNotEmpty ||
      isFormatsNotEmpty ||
      isSeasonsNotEmpty ||
      isStatusNotEmpty;

  bool isSeasonSelected(AnimePreferenceModel item) =>
      _selectedSeasons.contains(item);

  bool isFormatSelected(AnimePreferenceModel item) =>
      _selectedFormats.contains(item);

  bool isGenreSelected(AnimePreferenceModel item) =>
      _selectedGenres.contains(item);

  bool isStatusSelected(AnimePreferenceModel item) =>
      _selectedStatus.contains(item);

  toggleSeason(AnimePreferenceModel item) {
    _selectedSeasons.toggleItem(item);
    notifyListeners();
  }

  toggleFormat(AnimePreferenceModel item) {
    _selectedFormats.clear();
    _selectedFormats.toggleItem(item);
    notifyListeners();
  }

  toggleGenre(AnimePreferenceModel item) {
    _selectedGenres.toggleItem(item);
    notifyListeners();
  }

  toggleStatus(AnimePreferenceModel item) {
    _selectedStatus.clear();
    _selectedStatus.toggleItem(item);
    notifyListeners();
  }

  clearAllSeason() {
    _selectedSeasons.clear();
    notifyListeners();
  }

  clearAllFormats() {
    _selectedFormats.clear();
    notifyListeners();
  }

  clearAllGenres() {
    _selectedGenres.clear();
    notifyListeners();
  }

  clearAllStatus() {
    _selectedStatus.clear();
    notifyListeners();
  }

  onQueryChange() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      var query = queryController.text.trim();
      if (query.length > 2) {
        _pagingController.refresh();
      }
    });
  }

  onQuerySubmit() {
    var query = queryController.text.trim();
    if (query.length > 2) {
      _pagingController.refresh();
    }
  }

  onQueryClear() {
    var query = queryController.text.trim();
    if (query.length > 2) {
      _queryController.clear();
      _pagingController.refresh();
    } else {
      _queryController.clear();
    }
    notifyListeners();
  }

  reset() {
    clearAllFormats();
    clearAllGenres();
    clearAllSeason();
    clearAllStatus();
    _pagingController.refresh();
  }

  Map<String, dynamic> _queryParameters(pageKey) {
    var queryParameters = {
      if (queryController.text.length > 3) "query": queryController.text.trim(),
      if (getListOfSeasonsString.isNotEmpty)
        "season": getListOfSeasonsString[0],
      if (getListOfFormatsString.isNotEmpty)
        "format": getListOfFormatsString[0],
      if (getListOfGenresString.isNotEmpty)
        "genres": jsonEncode([...getListOfGenresString]),
      if (getListOfStatusString.isNotEmpty) "status": getListOfStatusString[0],
      'page': pageKey,
    };
    return queryParameters;
  }

  Future<void> _fetchApi(int pageKey) async {
    try {
      final SearchAnimeModel data = await searchAnimeData.getSearchAnime(
          queryParameters: _queryParameters(pageKey));
      final List<SearchedResult> animes = data.results;
      final isLastPage = animes.length < _pageSize || data.hasNextPage == false;
      if (isLastPage) {
        _pagingController.appendLastPage(animes);
      } else {
        final nextPageKey = data.currentPage + 1;
        _pagingController.appendPage(animes, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
