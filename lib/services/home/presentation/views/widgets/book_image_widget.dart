import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImageWidget extends StatelessWidget {
  const BookImageWidget({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          errorWidget: (context, url, error) => const Center(
            child: Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
