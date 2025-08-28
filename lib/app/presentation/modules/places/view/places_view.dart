import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/list_item/list_item_place_gw.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/utils/tap_map.dart';
import 'package:hacom_app_test/app/presentation/modules/places/controller/place_provider.dart';

class PlacesView extends ConsumerWidget {
  const PlacesView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context, BuilderRef ref) {
    final placeController = ref.watch(placeProvider);
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
          if (placeController.state.loading)
            const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
          // Lista de vehículos
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = placeController.state.places[index];
              return ListItemPlaceGW(
                onTap: () => tapMap(item),
                adaptiveScreen: adaptiveScreen,
                name: item.name,
              );
            }, childCount: placeController.state.places.length),
          ),
        ],
      ),
    );
  }
}
