import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/services/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            Image.asset(
              AppAssets.logoImage,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.routeName);
              },
              color: Colors.white,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            ),
          ],
        ),
      ),
    );
  }
}
