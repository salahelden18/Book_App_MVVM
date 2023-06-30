import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2,
                    ),
                    child: CustomBookImage(
                        imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    bookModel.volumeInfo!.title!,
                    style: Styles.textStyle30,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 18),
                  // will be changed later
                  BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                    count: bookModel.volumeInfo?.ratingsCount ?? 0,
                    rating: bookModel.volumeInfo?.averageRating ?? 0,
                  ),
                  const SizedBox(height: 30),
                  const BooksAction(),
                  const Expanded(
                    child: SizedBox(height: 50),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SimilarBooksListView(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
