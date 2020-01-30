import 'package:moor_flutter/moor_flutter.dart';
import 'package:database_ex2/local/database.dart';
import 'package:database_ex2/local/model/author_table.dart';

part 'author_dao.g.dart';

@UseDao(
    tables: [Authors]
)
class AuthorDao extends DatabaseAccessor<Database> with _$AuthorDaoMixin {
  final Database db;
  AuthorDao(this.db): super(db);

  Stream<List<Author>> watchAuthors() => select(authors).watch();
  Future<List<Author>> getAllAuthors() => select(authors).get();
}