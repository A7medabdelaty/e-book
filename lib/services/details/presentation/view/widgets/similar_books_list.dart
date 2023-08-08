import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/core/utils/custom_progress_indicator.dart';
import 'package:bookly/services/details/presentation/view%20model/similar_books_cubit.dart';
import 'package:bookly/services/details/presentation/view/widgets/similar_books_list_item.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'more_title.dart';

class SimilarBooksList extends StatefulWidget {
  const SimilarBooksList({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<SimilarBooksList> createState() => _SimilarBooksListState();
}

class _SimilarBooksListState extends State<SimilarBooksList> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(
        category: widget.bookModel.volumeInfo?.categories?[0] ?? 'programming');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              children: [
                const MoreTitleText(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        SimilarListItem(bookModel: state.books[index]),
                    itemCount: state.books.length,
                  ),
                )
              ],
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
