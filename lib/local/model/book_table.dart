import 'package:moor_flutter/moor_flutter.dart';
//import 'package:moor/moor.dart';
class Books extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 200)();
  IntColumn get authorId => integer()();
  IntColumn get categoryId => integer().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}
