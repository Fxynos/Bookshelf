import 'package:domain/boundary/session_cubit.dart';
import 'package:domain/entity/session.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSessionCubit extends SessionCubit {

  final GoogleSignIn _google = GoogleSignIn(scopes: ['email']);

  GoogleSessionCubit(super.initialState) {
    _google
        ..onCurrentUserChanged
            .asyncMap(_toSession)
            .listen(emit)
        ..signInSilently();
  }

  @override
  void logOut() => _google.signOut();

  @override
  void signIn() => _google.signIn();

  static Future<Session?> _toSession(GoogleSignInAccount? account) =>
      account?.authentication.then((auth) => Session(
          token: auth.accessToken!,
          login: account.displayName!,
          imageUrl: account.photoUrl
      )) ?? Future.value(null);
}