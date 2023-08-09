import 'package:bookly/services/details/presentation/views/details_view.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/presentation/views/widgets/book_image_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListItem extends StatelessWidget {
  const FeaturedBooksListItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 6 / 9,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, DetailsView.routeName,arguments: bookModel);
          },
          child: BookImageWidget(
            bookModel: bookModel,
          ),
        ),
      ),
    );
  }
}
