import 'package:domain/boundary/session_cubit.dart';
import 'package:domain/entity/session.dart';
import 'package:domain/usecase/usecase_contracts.dart';

class ObserveIsLoggedInUseCase extends StreamUseCase<void, Session?> {

  final SessionCubit _sessionRepository;

  ObserveIsLoggedInUseCase({
    required SessionCubit sessionRepository
  }) : _sessionRepository = sessionRepository;

  @override
  Stream<Session?> invoke(void param) => _sessionRepository.stream;
}