import 'package:bookshelf/di/base_dependency_holder.dart';
import 'package:bookshelf/navigation/arguments.dart';
import 'package:flutter/material.dart';
import 'package:ui/screen/auth_screen.dart';

sealed class Destination<A extends Arguments, S extends Widget> {

  final String route;
  final S Function(A?) _builder;
  final BaseDependencyHolder _dependencyHolder;

  Destination({
    required this.route,
    required S Function(A?) builder,
    required BaseDependencyHolder dependencyHolder
  }) : _builder = builder, _dependencyHolder = dependencyHolder;

  Widget build(BuildContext context) => _dependencyHolder.inject(
      child: _builder(
          ModalRoute.of(context)!
              .settings
              .arguments as A?
      )
  );

  static Map<String, Widget Function(BuildContext)> provideRoutes(
      Iterable<Destination> destinations
    ) => Map.fromEntries(
      destinations.map((destination) => MapEntry(
          destination.route,
          destination.build
      ))
    );
}

/* Destinations */

class AuthDestination extends Destination<EmptyArguments, AuthScreen> {
  AuthDestination({required super.dependencyHolder}): super(
    route: '/auth',
    builder: (args) => AuthScreen()
  );
}

class SearchBookDestination extends Destination<EmptyArguments, Text> {
  SearchBookDestination({required super.dependencyHolder}): super(
      route: '/books/search',
      builder: (args) => const Text("Not implemented")
  );
}

class FavoriteBooksDestination extends Destination<EmptyArguments, Text> {
  FavoriteBooksDestination({required super.dependencyHolder}): super(
      route: '/books/favorites',
      builder: (args) => const Text("Not implemented")
  );
}

class BookDestination extends Destination<BookArguments, Text> {
  BookDestination({required super.dependencyHolder}): super(
      route: '/books/favorites',
      builder: (args) => const Text("Not implemented")
  );
}