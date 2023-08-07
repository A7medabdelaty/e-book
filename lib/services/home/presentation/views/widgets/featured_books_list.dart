import 'package:flutter/material.dart';

import 'featured_books_item.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.237,
      child: ListView.builder(
        itemBuilder: (context, index) => const FeaturedBooksListItem(),
        scrollDirection: Axis.horizontal,
        itemCount: 50,
      ),
    );
  }
}
