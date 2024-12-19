import 'package:domain/boundary/book_repository.dart';
import 'package:domain/boundary/session_repository.dart';
import 'package:domain/usecase/usecase_contracts.dart';

class AddFavoriteBookUseCase extends AsyncUseCase<String, void> {

  final SessionRepository _sessionRepository;
  final BookRepository _bookRepository;

  AddFavoriteBookUseCase({
    required SessionRepository sessionRepository,
    required BookRepository bookRepository
  }) : _sessionRepository = sessionRepository, _bookRepository = bookRepository;

  /// [param] is book's id
  @override
  Future<void> invoke(String param) =>
      _bookRepository.addToFavoritesById(
          _sessionRepository.requireSession().token,
          param
      );
}