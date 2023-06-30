import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custom_loading_indicator_widget.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_app/features/home/presentation/views_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubitCubit, FeaturedBooksCubitState>(
      builder: (context, state) {
        if (state is FeaturedBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksCubitFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
