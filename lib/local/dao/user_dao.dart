import 'package:moor_flutter/moor_flutter.dart';
import 'package:database_ex2/local/model/user_table.dart';
import 'package:database_ex2/local/database.dart';

part 'user_dao.g.dart';

@UseDao(
    tables: [Users]
)
class UserDao extends DatabaseAccessor<Database> with _$UserDaoMixin {
  final Database db;
  UserDao(this.db): super(db);

  Stream<List<User>> watchUsers() => select(users).watch();
  Future<List<User>> getAllUsers() => select(users).get();
}