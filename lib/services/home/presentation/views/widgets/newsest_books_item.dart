import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/services/details/presentation/views/details_view.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/presentation/views/widgets/book_image_widget.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class HomeBestSellerItem extends StatelessWidget {
  const HomeBestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailsView.routeName,
          arguments: bookModel,
        );
      },
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: BookImageWidget(bookModel: bookModel),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${bookModel.volumeInfo?.title}',
                  style: AppTextStyles.text20.copyWith(
                    fontFamily: kGTSectraFine,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "${bookModel.volumeInfo?.authors?[0]}",
                    style: AppTextStyles.text14,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.23,
                      child: Text(
                        bookModel.saleInfo?.saleability == 'FOR_SALE'
                            ? '${bookModel.saleInfo?.listPrice?.amount?.round()} ${bookModel.saleInfo?.listPrice?.currencyCode}'
                            : 'Free',
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text16
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    BookRating(
                        averageRating: bookModel.volumeInfo!.averageRating!,
                        ratingCount: bookModel.volumeInfo!.ratingsCount!),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
