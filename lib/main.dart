import 'package:bookshelf/di/main_dependency_holder.dart';
import 'package:bookshelf/navigation/destinations.dart';
import 'package:flutter/material.dart';

void main() {
  final dependencyHolder = MainDependencyHolder();
  runApp(MaterialApp(
    initialRoute: AuthDestination(dependencyHolder: dependencyHolder).route,
    routes: Destination.provideRoutes([
      AuthDestination(dependencyHolder: dependencyHolder),
      SearchBookDestination(dependencyHolder: dependencyHolder),
      FavoriteBooksDestination(dependencyHolder: dependencyHolder),
      BookDestination(dependencyHolder: dependencyHolder)
    ]),
  ));
}