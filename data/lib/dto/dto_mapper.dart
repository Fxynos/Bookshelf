import 'package:data/dto/book_dto.dart';
import 'package:domain/entity/book.dart';
import 'package:domain/entity/read_access.dart';

class DtoMapper {
  DtoMapper._();

  static Book bookToDomain(BookDto dto) => Book(
      id: dto.id!,
      title: dto.volumeInfo!.title!,
      subtitle: dto.volumeInfo!.subtitle!,
      publisher: dto.volumeInfo!.publisher!,
      publishedDate: DateTime.parse(dto.volumeInfo!.publishedDate!),
      authors: dto.volumeInfo!.authors!,
      access: accessToDomain(dto.accessInfo!)
  );

  static ReadAccess accessToDomain(AccessInfo dto) => switch (dto.viewability!) {
    "partial" => ReadAccess.partial,
    "full" => ReadAccess.full,
    String() => throw UnimplementedError(),
  };
}