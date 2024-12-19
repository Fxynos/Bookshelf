import 'package:domain/boundary/book_repository.dart';
import 'package:domain/entity/book.dart';
import 'package:domain/usecase/usecase_contracts.dart';

class GetBooksByQueryUseCase extends AsyncUseCase<String, List<Book>> {

  final BookRepository _bookRepository;

  GetBooksByQueryUseCase({
    required BookRepository bookRepository
  }) : _bookRepository = bookRepository;

  /// [param] is search query
  @override
  Future<List<Book>> invoke(String param) => _bookRepository.search(param);
}