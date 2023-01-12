import 'package:isar/isar.dart';

part 'favourite.anime.model.g.dart';

@embedded
class FavouriteTitle {
  String? romaji;
  String? english;
  String? native;
  String? userPreferred;
}

@collection
@Name("favourites")
class Favourite {
  Id id = Isar.autoIncrement;
  late String aniId;
  FavouriteTitle? title;
  int? malId;
  List<String>? synonyms;
  bool? isAdult;
  String? image;
  String? cover;
  String? description;
  List<String>? genres;
  String? season;
  List<String>? studios;
  String? subOrDub;
  String? type;
  String? status;
  int? totalEpisodes;
  int? releaseDate;
  int? duration;
  int? rating;
  List<int> viewedEpisodes = [];
}
