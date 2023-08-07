import 'package:bookly/services/home/presentation/views/widgets/home_appbar.dart';
import 'package:bookly/services/home/presentation/views/widgets/newest_books_list.dart';
import 'package:bookly/services/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

import 'widgets/newest_books_title.dart';

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
                FeaturedBooksList(),
                TitleText(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: NewestBooksList(),
          ),
        ],
      ),
    );
  }
}
