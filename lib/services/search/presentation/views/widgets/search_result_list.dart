import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.separated(
          //itemBuilder: (context, index) => const HomeBestSellerItem(),
          itemBuilder: (context, index) => const Text('data'),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: 20,
        ),
      ),
    );
  }
}
