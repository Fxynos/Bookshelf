import 'package:domain/boundary/book_repository.dart';
import 'package:domain/boundary/session_cubit.dart';
import 'package:domain/entity/book.dart';
import 'package:domain/usecase/usecase_contracts.dart';

class GetFavoriteBooksUseCase extends AsyncUseCase<void, List<Book>> {

  final SessionCubit _sessionRepository;
  final BookRepository _bookRepository;

  GetFavoriteBooksUseCase({
    required SessionCubit sessionRepository,
    required BookRepository bookRepository
  }) : _sessionRepository = sessionRepository, _bookRepository = bookRepository;

  @override
  Future<List<Book>> invoke(void param) =>
      _bookRepository.getFavorites(
          _sessionRepository.requireSession().token
      );
}