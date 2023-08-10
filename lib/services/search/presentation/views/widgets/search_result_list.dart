import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/presentation/views/widgets/newsest_books_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key, required this.books});

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.separated(
          itemBuilder: (context, index) => HomeBestSellerItem(
            bookModel: books[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: books.length,
        ),
      ),
    );
  }
}
