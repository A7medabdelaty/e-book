import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            "Read Free Books",
            style: AppTextStyles.text14,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
