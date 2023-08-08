import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key, required this.price, required this.countryCode});
  final String price;
  final String countryCode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 14,
              ),
              child: Text(
                '$price $countryCode',
                style: AppTextStyles.text16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: kOrangeColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
              child: Text(
                'Free preview',
                style: AppTextStyles.text16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
