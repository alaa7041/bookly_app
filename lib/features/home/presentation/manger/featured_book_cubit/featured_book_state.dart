import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksState extends Equatable{
  const FeaturedBooksState();

  @override
  List<Object> get props => [];

}

class FeaturedBooksInitial extends FeaturedBooksState{}
class FeaturedBooksLoading extends FeaturedBooksState{}
class FeaturedBooksFailure extends FeaturedBooksState{
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}