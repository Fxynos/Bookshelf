import 'package:domain/entity/read_access.dart';

class Book {
  final String id;
  final String title;
  final String subtitle;
  final String publisher;
  final DateTime publishedDate;
  final List<String> authors;
  final ReadAccess access;

  Book({
      required this.id,
      required this.title,
      required this.subtitle,
      required this.publisher,
      required this.publishedDate,
      required this.authors,
      required this.access
  });
}
