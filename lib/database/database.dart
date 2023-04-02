import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'package:flutter_train/database/todo.dart';

class DbHelper {
  DbHelper();

  late final Database _database;
  late final StoreRef<int, Map<String, dynamic>> _store;

  Future<void> initialize() async {
    //Opening a database
    final appDir = await getApplicationDocumentsDirectory();

    // We use the database factory to open the database
    _database = await databaseFactoryIo.openDatabase(join(appDir.path, 'todo.db'),);

     // Use the todo store using Map records with int keys
    _store = intMapStoreFactory.store('todo'); //Store factory with key as int and value as Map
  }

  // "C" of "CRUD"
  Future<ToDoRecord> add(ToDo todo) async {
    final key = await _store.add(_database, todo.toJson());
    return ToDoRecord(key, todo);
  }

  // "R" of "CRUD"
  Future<List<ToDoRecord>> find() async {
    final result = await _store.find(
      _database,
      finder: Finder(
        sortOrders: [SortOrder(Field.key, false)],
      ),
    );

    return result.map(
      (e) => ToDoRecord(
        e.key,
        ToDo.fromJson(e.value),
      ),
    ).toList();
  }

  // "U" of "CRUD"
  Future<void> update(int key, ToDo todo) async {
    await _store.record(key).put(_database, todo.toJson());
  }
}

