import 'package:domain/boundary/session_cubit.dart';
import 'package:domain/usecase/usecase_contracts.dart';

class LogOutUseCase extends BlockingUseCase<void, void> {

  final SessionCubit _sessionRepository;

  LogOutUseCase({
    required SessionCubit sessionRepository
  }) : _sessionRepository = sessionRepository;

  @override
  void invoke(void param) => _sessionRepository.logOut();
}