import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchTrailer(id) async {
  Uri url = Uri.parse(
    "https://www.youtube.com/watch?v=$id",
  );
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

Future<void> launchHTTPurl(String url) async {
  Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw 'Could not launch $url';
  }
}

Future<void> launchAnilist(id) async {
  Uri url = Uri.parse("https://anilist.co/anime/$id");
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

Future<void> launchMyAnimeList(id) async {
  Uri url = Uri.parse("https://myanimelist.net/anime/$id");
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

getCrossAxisCount(BuildContext context) {
  return Responsive.isMobile(context)
      ? 2
      : Responsive.isMobileLarge(context)
          ? 3
          : Responsive.isTablet(context)
              ? 4
              : Responsive.isDesktop(context)
                  ? 5
                  : 7;
}

extension CapitalizeExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension ReplaceAndCapitalizeExtension on String {
  String replaceAndCapitalize() {
    return replaceAll('_', ' ').capitalize();
  }
}

extension Toggle<T> on List<T> {
  void toggleItem(T item) => contains(item) ? remove(item) : add(item);
}

void showSnackBar(BuildContext context, String content) {
  var colors = Theme.of(context).colorScheme;
  var mger = ScaffoldMessenger.of(context);
  SnackBar snackBar = SnackBar(
    content: Text(content, style: TextStyle(color: colors.onSurfaceVariant)),
    behavior: SnackBarBehavior.floating,
    backgroundColor: colors.surfaceVariant,
  );
  mger.clearSnackBars();
  mger.showSnackBar(snackBar);
}
