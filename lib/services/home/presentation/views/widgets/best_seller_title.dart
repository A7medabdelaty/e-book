import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: AppTextStyles.text18,
          ),
        ],
      ),
    );
  }
}
