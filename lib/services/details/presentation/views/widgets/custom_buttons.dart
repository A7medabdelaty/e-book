import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/custom_url_launcher.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                customUrlLauncher(url: bookModel.volumeInfo?.previewLink ?? '');
              },
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
                '${bookModel.saleInfo?.listPrice?.amount ?? 'Free'} ${bookModel.saleInfo?.listPrice?.currencyCode ?? ''}',
                style: AppTextStyles.text16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                customUrlLauncher(url: bookModel.accessInfo?.webReaderLink ?? '');
              },
              color: kOrangeColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
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
