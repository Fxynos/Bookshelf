import 'package:domain/entity/session.dart';

abstract class SessionRepository {
  // default
  bool isAuthenticated() => getSession() != null;
  Session requireSession() => getSession()!;

  // abstract
  Session? getSession();
  void signIn();
  void logOut();
}