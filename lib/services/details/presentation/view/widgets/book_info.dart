import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/services/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookInformationCard extends StatelessWidget {
  const BookInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.bookImage,
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          "The Jungle Book",
          style: AppTextStyles.text30.copyWith(
            fontFamily: kGTSectraFine,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: AppTextStyles.text18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
