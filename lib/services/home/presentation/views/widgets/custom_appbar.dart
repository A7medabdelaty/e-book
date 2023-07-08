import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        child: Row(
          children: [
            Image.asset(
              AppAssets.logoImage,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
