import 'package:flutter/material.dart';

class BackgroundSplashW extends StatelessWidget {
  const BackgroundSplashW({super.key, required this.assetImage});
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
