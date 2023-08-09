import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MoreTitleText extends StatelessWidget {
  const MoreTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "You can also like",
            style: AppTextStyles.text14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
