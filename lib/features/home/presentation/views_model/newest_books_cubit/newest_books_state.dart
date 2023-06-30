part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}
