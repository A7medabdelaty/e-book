import 'package:flutter/material.dart';

import 'home_highlight_item.dart';

class HomeHighlightList extends StatelessWidget {
  const HomeHighlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery
          .of(context)
          .size
          .height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) => const HomeHighlightListItem(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
