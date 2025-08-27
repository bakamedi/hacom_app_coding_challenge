import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/vehicle_ext.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/list_item/list_item_gw.dart';
import 'package:hacom_app_test/app/presentation/modules/vehicles/controller/vehicle_provider.dart';
import 'package:hacom_app_test/app/presentation/modules/vehicles/util/request_map.dart';

class VehiclesView extends ConsumerWidget {
  const VehiclesView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context, BuilderRef ref) {
    final vehicleController = ref.watch(vehicleProvider);

    return Scaffold(
      backgroundColor: AppColorUtil().surface,
      body: Stack(
        children: [
          CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: AppColorUtil().primary,
                iconTheme: const IconThemeData(color: Colors.white),
                title: const Text(
                  'Supervisor de Flota - Livetrack',
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: adaptiveScreen.sfp(20),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // refrescar
                      vehicleController.init();
                    },
                    icon: Icon(
                      Icons.refresh_rounded,
                      color: Colors.white,
                      size: adaptiveScreen.sfp(20),
                    ),
                  ),
                ],
              ),

              SliverPersistentHeader(
                pinned: true,
                delegate: _PinnedHeaderDelegate(
                  minExtent: adaptiveScreen.hpx(30),
                  maxExtent: adaptiveScreen.hpx(30),
                  child: ColoredBox(
                    color: AppColorUtil().primaryLight,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Fleet Manager Inversiones Sasmar',
                        style: TextStyle(
                          fontSize: adaptiveScreen.sfp(17),
                          color: AppColorUtil().onPrimary,
                        ),
                      ).padding(EdgeInsets.only(left: adaptiveScreen.wpx(10))),
                    ),
                  ),
                ),
              ),

              // 👇 acá usamos el estado
              if (vehicleController.state.loading)
                const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                )
              else
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final vehicle = vehicleController.state.vehicles[index];
                    return ListItemGW(
                      adaptiveScreen: adaptiveScreen,
                      name: vehicle.name,
                      color: vehicle.stateType.color,
                    );
                  }, childCount: vehicleController.state.vehicles.length),
                ).sliverPadding(
                  EdgeInsets.symmetric(horizontal: adaptiveScreen.wpx(9)),
                ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              color: AppColorUtil().divider,
              padding: EdgeInsets.only(
                top: adaptiveScreen.hpx(10),
                left: adaptiveScreen.wpx(20),
                right: adaptiveScreen.wpx(20),
                bottom: adaptiveScreen.hpx(40),
              ),
              child: ElevatedButton(
                onPressed: () => requestMap(),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: adaptiveScreen.hpx(14),
                  ),
                ),
                child: const Text('VER TODOS EN EL MAPA'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;
  final Widget child;

  _PinnedHeaderDelegate({
    required this.minExtent,
    required this.maxExtent,
    required this.child,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _PinnedHeaderDelegate oldDelegate) {
    return oldDelegate.minExtent != minExtent ||
        oldDelegate.maxExtent != maxExtent ||
        oldDelegate.child != child;
  }
}
