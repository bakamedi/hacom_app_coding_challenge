import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';

import '../../controllers/loader/loader_gc.dart';

class LoaderGW extends ConsumerWidget {
  const LoaderGW({super.key, required this.adaptiveScreen});
  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context, BuilderRef ref) {
    final loaderGC = ref.watch(loaderGP);
    final primaryColor = Theme.of(context).primaryColor;

    return loaderGC.loading
        ? PopScope(
            canPop: false,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Material(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: SizedBox.expand(
                        child: ColoredBox(
                          color: Colors.black.withValues(alpha: 0.4),
                          child: Transform.scale(
                            scale: adaptiveScreen.sfp(15),
                            child: Center(
                              child: CircularProgressIndicator.adaptive(
                                backgroundColor: Colors.grey,
                                valueColor: AlwaysStoppedAnimation(
                                  primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
