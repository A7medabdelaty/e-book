import 'package:bookly/services/home/presentation/views/widgets/home_bestseller_item.dart';
import 'package:flutter/material.dart';

class HomeBestSellerList extends StatelessWidget {
  const HomeBestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) => const HomeBestSellerItem(),
    );
  }
}
