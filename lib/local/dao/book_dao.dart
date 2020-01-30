import 'package:moor_flutter/moor_flutter.dart';
import 'package:database_ex2/local/database.dart';
import 'package:database_ex2/local/model/book_table.dart';

part 'book_dao.g.dart';

@UseDao(
    tables: [Books]
)
class BookDao extends DatabaseAccessor<Database> with _$BookDaoMixin {
  final Database db;
  BookDao(this.db): super(db);

  Stream<List<Book>> watchBooks() => select(books).watch();
  Future<List<Book>> getAllBooks() => select(books).get();
}