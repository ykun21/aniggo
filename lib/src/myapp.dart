import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/presentation/providers/providers.dart';
import 'package:aniggo/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/screens/screens.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appSettingsProvider).themeMode;
    final appColor = ref.watch(appSettingsProvider).appColor;

    return MaterialApp(
      title: 'Aniggo',
      themeMode: themeMode,
      theme: AppThemeData.lightTheme(appColor: appColor),
      darkTheme: AppThemeData.darkTheme(appColor: appColor),
      home: const NavigationScreen(),
      initialRoute: RouteNames.home,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
