import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entities.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookEntity>>> fetchNewestBooks();
}