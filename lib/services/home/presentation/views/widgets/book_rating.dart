import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, required this.averageRating, required this.ratingCount});

  final num averageRating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: kStarColor,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "$averageRating",
          style: AppTextStyles.text16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($ratingCount)",
            style: AppTextStyles.text14.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }
}
