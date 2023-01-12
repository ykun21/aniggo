import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/screens/screens.dart';
import 'package:aniggo/src/presentation/widgets/responsive.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationScreen extends ConsumerStatefulWidget {
  const NavigationScreen({super.key});

  @override
  ConsumerState<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends ConsumerState<NavigationScreen> {
  late PageController _pageController;

  final List<Widget> _pages = const [
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(navigationProvider);
    void onTap(int i) {
      _pageController.animateToPage(i,
          duration: const Duration(microseconds: 200),
          curve: Curves.bounceInOut);
      ref.read(navigationProvider.notifier).state = i;
    }

    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        body: Row(
          children: [
            if (!Responsive.isMobile(context))
              NavigationRail(
                useIndicator: false,
                selectedIndex: currentIndex,
                extended: Responsive.isDesktop(context),
                labelType: NavigationRailLabelType.none,
                onDestinationSelected: (int index) => onTap(index),
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                      padding: AppDimens.defPadV,
                      icon: Icon(Icons.home_outlined),
                      selectedIcon: Icon(Icons.home),
                      label: Text('Home')),
                  NavigationRailDestination(
                      padding: AppDimens.defPadV,
                      icon: Icon(Icons.dashboard_outlined),
                      selectedIcon: Icon(Icons.dashboard),
                      label: Text('Anime List')),
                  NavigationRailDestination(
                      padding: AppDimens.defPadV,
                      icon: Icon(Icons.bookmarks_outlined),
                      selectedIcon: Icon(Icons.bookmarks),
                      label: Text('Favourites')),
                  NavigationRailDestination(
                      padding: AppDimens.defPadV,
                      icon: Icon(Icons.favorite_outline_outlined),
                      selectedIcon: Icon(Icons.favorite),
                      label: Text('Settings')),
                ],
              ),
            Expanded(
              child: PageView.builder(
                  itemCount: _pages.length,
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  pageSnapping: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, position) {
                    return _pages[position];
                  }),
            ),
          ],
        ),
        bottomNavigationBar: !Responsive.isMobile(context)
            ? null
            : NavigationBar(
                selectedIndex: currentIndex,
                onDestinationSelected: (int i) => onTap(i),
                destinations: const [
                    NavigationDestination(
                        icon: Icon(Icons.home_outlined),
                        selectedIcon: Icon(Icons.home),
                        label: 'Home'),
                    NavigationDestination(
                        icon: Icon(Icons.dashboard_outlined),
                        selectedIcon: Icon(Icons.dashboard),
                        label: 'Anime List'),
                    NavigationDestination(
                        icon: Icon(Icons.favorite_outline_outlined),
                        selectedIcon: Icon(Icons.favorite),
                        label: 'Favourites'),
                    NavigationDestination(
                        icon: Icon(Icons.settings_outlined),
                        selectedIcon: Icon(Icons.settings),
                        label: 'Settings'),
                  ]));
  }
}
