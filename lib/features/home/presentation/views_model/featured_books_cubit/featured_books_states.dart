part of 'featured_books_cubit.dart';

abstract class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

class FeaturedBooksCubitLoading extends FeaturedBooksCubitState {}

class FeaturedBooksCubitFailure extends FeaturedBooksCubitState {
  final String errorMessage;

  const FeaturedBooksCubitFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class FeaturedBooksCubitSuccess extends FeaturedBooksCubitState {
  final List<BookModel> books;

  const FeaturedBooksCubitSuccess(this.books);

  @override
  List<Object> get props => [books];
}
