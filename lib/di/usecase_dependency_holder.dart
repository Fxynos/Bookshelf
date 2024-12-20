import 'package:domain/usecase/add_favorite_book_usecase.dart';
import 'package:domain/usecase/get_books_by_query_usecase.dart';
import 'package:domain/usecase/get_favorite_books_usecase.dart';
import 'package:domain/usecase/log_out_usecase.dart';
import 'package:domain/usecase/observe_is_logged_in_usecase.dart';
import 'package:domain/usecase/sign_in_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_dependency_holder.dart';

class UseCaseDependencyHolder extends BaseDependencyHolder {
  @override
  create() => [
    (context) => SignInUseCase(sessionRepository: context.read()),
    (context) => LogOutUseCase(sessionRepository: context.read()),
    (context) => ObserveIsLoggedInUseCase(sessionRepository: context.read()),
    (context) => GetBooksByQueryUseCase(bookRepository: context.read()),
    (context) => GetFavoriteBooksUseCase(sessionRepository: context.read(), bookRepository: context.read()),
    (context) => AddFavoriteBookUseCase(sessionRepository: context.read(), bookRepository: context.read())
  ].map((provide) =>
      (child) => RepositoryProvider(create: provide, child: child)
  ).toList();
}