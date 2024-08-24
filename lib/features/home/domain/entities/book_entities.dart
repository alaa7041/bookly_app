class BookEntity {
   String  title, bookId;
   String? authorName,image;
   num? price, rating;

   BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.rating,
    required this.bookId,
  });
}
