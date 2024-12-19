import 'package:domain/boundary/session_repository.dart';
import 'package:domain/usecase/usecase_contracts.dart';

class SignInUseCase extends BlockingUseCase<void, void> {

  final SessionRepository _sessionRepository;

  SignInUseCase({
    required SessionRepository sessionRepository
  }) : _sessionRepository = sessionRepository;

  @override
  void invoke(void param) => _sessionRepository.signIn();
}