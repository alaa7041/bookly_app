import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class NewestBooksState extends Equatable{
  const NewestBooksState();

  @override
  List<Object> get props => [];

}

class NewestBooksInitial extends NewestBooksState{}
class NewestBooksLoading extends NewestBooksState{}
class NewestBooksFailure extends NewestBooksState{
  final String errMessage;

  NewestBooksFailure(this.errMessage);
}
class NewestBooksSuccess extends NewestBooksState{
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}