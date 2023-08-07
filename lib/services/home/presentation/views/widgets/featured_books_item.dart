import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListItem extends StatelessWidget {
  const FeaturedBooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 6 / 9,
        child: Container(
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
      ),
    );
  }
}
