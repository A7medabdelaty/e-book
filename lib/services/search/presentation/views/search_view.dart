import 'package:bookly/services/search/presentation/views/widgets/search_app_bar.dart';
import 'package:bookly/services/search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const String routeName = 'search view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchCustomAppBar(),
            SearchResultList(),
          ],
        ),
      ),
    );
  }
}
