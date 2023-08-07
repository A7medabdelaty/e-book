import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/core/utils/custom_progress_indicator.dart';
import 'package:bookly/services/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_item.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => FeaturedBooksListItem(
              bookModel: state.books[index],
            ),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
