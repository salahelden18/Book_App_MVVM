import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                    child: const CustomBookImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1687979508407-0a0a5036b394?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60'),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'The Jungle Book',
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 18),
                  // will be changed later
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                    count: 25,
                    rating: 4,
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
