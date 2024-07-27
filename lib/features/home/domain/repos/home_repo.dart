import '../entities/book_entities.dart';

abstract class HomeRepo{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchUsedBooks();
}