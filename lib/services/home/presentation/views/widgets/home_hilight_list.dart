import 'package:flutter/material.dart';

import 'home_highlight_item.dart';

class HomeHighlightList extends StatelessWidget {
  const HomeHighlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.237,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 15.0,
        ),
        itemBuilder: (context, index) => const HomeHighlightListItem(),
        scrollDirection: Axis.horizontal,
        itemCount: 50,
      ),
    );
  }
}
