sealed class Arguments {}

/* Arguments */

class EmptyArguments extends Arguments {}

class BookArguments extends Arguments {
  final String bookId;

  BookArguments({required this.bookId});
}