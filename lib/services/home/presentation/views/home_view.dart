import 'package:bookly/services/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/services/home/presentation/views/widgets/home_bestseller_list.dart';
import 'package:bookly/services/home/presentation/views/widgets/home_hilight_list.dart';
import 'package:flutter/material.dart';

import 'widgets/best_seller_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppbar(),
                HomeHighlightList(),
                TitleText(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: HomeBestSellerList(),
          ),
        ],
      ),
    );
  }
}
