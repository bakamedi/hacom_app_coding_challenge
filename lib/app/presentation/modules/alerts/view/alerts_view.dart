import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/list_item/list_item_alert_gw.dart';
import 'package:hacom_app_test/app/presentation/modules/alerts/controller/alert_provider.dart';

class AlertsView extends ConsumerWidget {
  const AlertsView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context, BuilderRef ref) {
    final alertController = ref.watch(alertProvider);

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
                icon: const Icon(Icons.refresh, color: Colors.white),
              ),
            ],
          ),

          // Header de filtros
          SliverPersistentHeader(
            pinned: true,
            delegate: _FiltersHeaderDelegate(),
          ),

          if (alertController.state.loading)
            const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),

          if (alertController.state.vehicles.isEmpty)
            SliverFillRemaining(child: Text('No hay notificaciones').center()),
          if (alertController.state.vehicles.isNotEmpty)
            // Lista de vehículos
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final alert = alertController.state.vehicles[index];

                return ListItemAlertGW(
                  adaptiveScreen: adaptiveScreen,
                  name: alert.name,
                  count: alert.alert,
                );
              }, childCount: 10),
            ),
        ],
      ),
    );
  }
}

/// Header con filtros
class _FiltersHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Inicio",
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Fin",
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 6),
          ElevatedButton(
            onPressed: () {},
            child: const Text("FILTRAR"),
          ).expanded,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
