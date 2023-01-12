import 'package:aniggo/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'omponents/components.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const AppbarTitle(text: "Favourites")),
        body: const LibraryList());
  }
}
