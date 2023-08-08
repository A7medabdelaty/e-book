import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/presentation/views/widgets/book_image_widget.dart';
import 'package:flutter/cupertino.dart';

class SimilarListItem extends StatelessWidget {
  const SimilarListItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: BookImageWidget(bookModel: bookModel),
    );
  }
}
