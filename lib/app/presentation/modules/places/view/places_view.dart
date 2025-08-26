import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/list_item/list_item_place_gw.dart';

class PlacesView extends StatelessWidget {
  const PlacesView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorUtil().surface,
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          // AppBar
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            backgroundColor: AppColorUtil().primary,
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Text(
              'Supervisor de Flota - Livetrack',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),

          // Lista de vehículos
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListItemPlaceGW(
                adaptiveScreen: adaptiveScreen,
                name: "Ubicacion-$index",
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
