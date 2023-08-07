import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/core/utils/custom_progress_indicator.dart';
import 'package:bookly/services/home/presentation/view%20model/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/services/home/presentation/views/widgets/newsest_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
              child: HomeBestSellerItem(bookModel: state.books[index]),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
