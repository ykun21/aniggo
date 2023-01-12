class AnimePreferenceModel {
  const AnimePreferenceModel({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  static List<String> nameToStringList(List<AnimePreferenceModel> item) =>
      item.map((e) => e.name.trim()).toList();
}
