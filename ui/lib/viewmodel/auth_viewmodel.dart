import 'package:domain/usecase/observe_is_logged_in_usecase.dart';
import 'package:domain/usecase/sign_in_usecase.dart';

class AuthViewModel {
  final SignInUseCase _signInUseCase;
  final ObserveIsLoggedInUseCase _observeIsLoggedInUseCase;

  AuthViewModel({
    required SignInUseCase signInUseCase,
    required ObserveIsLoggedInUseCase observeIsLoggedInUseCase
  }) :_signInUseCase = signInUseCase, _observeIsLoggedInUseCase = observeIsLoggedInUseCase;

  void signIn() => _signInUseCase.invoke(null);
}