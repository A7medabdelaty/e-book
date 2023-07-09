import 'package:bookly/services/home/presentation/views/widgets/home_bestseller_item.dart';
import 'package:flutter/material.dart';

class HomeBestSellerList extends StatelessWidget {
  const HomeBestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const HomeBestSellerItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 50,
      ),
    );
  }
}
