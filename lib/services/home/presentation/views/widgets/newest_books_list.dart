import 'package:bookly/services/home/presentation/views/widgets/newsest_books_item.dart';
import 'package:flutter/material.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      separatorBuilder: (context, index) => const SizedBox(height: 20,),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: HomeBestSellerItem(),
      ),
    );
  }
}
