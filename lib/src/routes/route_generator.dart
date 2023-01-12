import 'package:aniggo/src/routes/route_name.dart';
import 'package:aniggo/src/domain/domain.dart';
import 'package:aniggo/src/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteNames.info:
        if (args is AnimeInfoScreenArguments) {
          return MaterialPageRoute(
              builder: (_) => AnimeInfoScreen(
                    anime: args.anime,
                    tag: args.tag,
                  ));
        }
        return _errorRoute();
      case RouteNames.search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case RouteNames.searchFilters:
        return MaterialPageRoute(
            builder: (_) => const SearchPreferenceScreen());
      case RouteNames.favourites:
        return MaterialPageRoute(builder: (_) => const FavouriteScreen());
      case RouteNames.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case RouteNames.play:
        if (args is Episode) {
          return MaterialPageRoute(builder: (_) => PlayScreen(episode: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('ERROR')),
      );
    });
  }
}
