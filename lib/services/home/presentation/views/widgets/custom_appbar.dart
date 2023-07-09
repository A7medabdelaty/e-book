import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 30, top: 10,bottom: 10),
        child: Row(
          children: [
            Image.asset(
              AppAssets.logoImage,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            ),
          ],
        ),
      ),
    );
  }
}
