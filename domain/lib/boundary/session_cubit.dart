import 'package:bloc/bloc.dart';
import 'package:domain/entity/session.dart';

abstract class SessionCubit extends Cubit<Session?> {

  SessionCubit(super.initialState);

  // default
  bool isAuthenticated() => state != null;
  Session requireSession() => state!;

  // abstract
  void signIn();
  void logOut();
}