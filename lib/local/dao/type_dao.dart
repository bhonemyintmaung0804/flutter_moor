import 'package:moor_flutter/moor_flutter.dart';
import 'package:database_ex2/local/database.dart';
import 'package:database_ex2/local/model/type_table.dart';

part 'type_dao.g.dart';

@UseDao(
    tables: [Types]
)
class TypeDao extends DatabaseAccessor<Database> with _$TypeDaoMixin {
  final Database db;
  TypeDao(this.db): super(db);

  Stream<List<Type>> watchTypes() => select(types).watch();
  Future<List<Type>> getAllTypes() => select(types).get();
}