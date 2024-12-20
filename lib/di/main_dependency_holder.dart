import 'package:bookshelf/di/base_dependency_holder.dart';
import 'package:bookshelf/di/repositories_holder.dart';
import 'package:bookshelf/di/usecase_dependency_holder.dart';

class MainDependencyHolder extends BaseDependencyHolder {
  @override
  create() => [
    RepositoriesDependencyHolder(),
    UseCaseDependencyHolder()
  ].map((holder) =>
    (widget) => holder.inject(child: widget)
  ).toList();
}