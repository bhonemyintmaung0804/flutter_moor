import 'package:moor_flutter/moor_flutter.dart';
import 'package:database_ex2/local/model/category_table.dart';
import 'package:database_ex2/local/database.dart';

part 'category_dao.g.dart';

@UseDao(
    tables: [Categories]
)
class CategoryDao extends DatabaseAccessor<Database> with _$CategoryDaoMixin {
  final Database db;
  CategoryDao(this.db): super(db);

  Stream<List<Categorie>> watchCategories() => select(categories).watch();
  Future<List<Categorie>> getAllCategories() => select(categories).get();
}