import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: kStarColor,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: AppTextStyles.text16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(4580)",
            style: AppTextStyles.text14.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }
}
