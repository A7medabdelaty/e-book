import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeHighlightListItem extends StatelessWidget {
  const HomeHighlightListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 9,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppAssets.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
