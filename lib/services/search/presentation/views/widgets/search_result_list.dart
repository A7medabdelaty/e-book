import 'package:bookly/services/home/presentation/views/widgets/newsest_books_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.separated(
          itemBuilder: (context, index) => const HomeBestSellerItem(),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: 20,
        ),
      ),
    );
  }
}
