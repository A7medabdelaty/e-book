import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class HomeBestSellerItem extends StatelessWidget {
  const HomeBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.bookImage,
          width: MediaQuery.of(context).size.width * 0.25,
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry Potter and the Goblet of Fire",
                style: AppTextStyles.text20.copyWith(
                  fontFamily: kGTSectraFine,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 3,
              ),
              const Opacity(
                opacity: 0.7,
                child: Text(
                  "J.K. Rowling",
                  style: AppTextStyles.text14,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "19.99 €",
                    style: AppTextStyles.text20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const BookRating(),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
