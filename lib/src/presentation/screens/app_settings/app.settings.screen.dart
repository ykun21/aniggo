import 'package:aniggo/src/presentation/screens/app_settings/components/clear_cache_preference.dart';
import 'package:aniggo/src/presentation/screens/app_settings/components/consumet_api_tile.dart';
import 'package:aniggo/src/presentation/screens/app_settings/components/data_preference.dart';
import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/components.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const AppbarTitle(text: "Settings")),
      body: ListView(
        children: const [
          ProviderPrefs(),
          Divider(),
          AppThemePreferenceTile(),
          AppColorPreferenceTile(),
          Divider(),
          DataPreferenceTile(),
          ClearCachePreferenceTile(),
          Divider(),
          ConsumetApiTile(),
        ],
      ),
    );
  }
}
