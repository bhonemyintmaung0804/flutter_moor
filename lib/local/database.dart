import 'package:moor_flutter/moor_flutter.dart';
import 'package:database_ex2/local/model/author_table.dart';
import 'package:database_ex2/local/model/book_table.dart';
import 'package:database_ex2/local/model/category_table.dart';
import 'package:database_ex2/local/model/type_table.dart';
import 'package:database_ex2/local/model/user_table.dart';
import 'package:database_ex2/local/dao/author_dao.dart';
import 'package:database_ex2/local/dao/book_dao.dart';
import 'package:database_ex2/local/dao/category_dao.dart';
import 'package:database_ex2/local/dao/type_dao.dart';
import 'package:database_ex2/local/dao/user_dao.dart';

part 'database.g.dart';

@UseMoor(tables: [Authors, Books, Categories, Types, Users], daos: [AuthorDao, BookDao, CategoryDao, TypeDao, UserDao ])
class Database extends _$Database{
  Database(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));
  @override
  int get schemaVersion => 1;
}