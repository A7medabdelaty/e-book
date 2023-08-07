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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppbar(),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.237,
                    child: const FeaturedBooksList()),
                const TitleText(),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: NewestBooksList(),
          ),
        ],
      ),
    );
  }
}
