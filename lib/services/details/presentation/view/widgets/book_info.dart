import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/presentation/views/widgets/book_image_widget.dart';
import 'package:bookly/services/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookInformationCard extends StatelessWidget {
  const BookInformationCard({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.432,
            child: BookImageWidget(bookModel: bookModel)),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "${bookModel.volumeInfo?.title}",
            textAlign: TextAlign.center,
            style: AppTextStyles.text30.copyWith(
              fontFamily: kGTSectraFine,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "${bookModel.volumeInfo?.authors?[0]}",
            style: AppTextStyles.text18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          averageRating: bookModel.volumeInfo?.averageRating ?? 0,
          ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
