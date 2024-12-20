import 'package:bookshelf/di/base_dependency_holder.dart';
import 'package:data/repository/google_session_cubit.dart';
import 'package:data/repository/remote_book_repository.dart';
import 'package:domain/boundary/book_repository.dart';
import 'package:domain/boundary/session_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _baseUrl = "https://www.googleapis.com/books/v1";

class RepositoriesDependencyHolder extends BaseDependencyHolder {
  @override
  create() => [
    (child) => RepositoryProvider(
        create: (context) => RemoteBookRepository(baseUrl: _baseUrl) as BookRepository,
        child: child
    ),
    (child) => BlocProvider(
        create: (context) => GoogleSessionCubit() as SessionCubit,
        child: child
    )
  ];
}