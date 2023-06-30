import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_states.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubitCubit(this.homeRepo) : super(FeaturedBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksCubitLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(FeaturedBooksCubitFailure(failure.errorMessage)),
      (books) => emit(FeaturedBooksCubitSuccess(books)),
    );
  }
}
