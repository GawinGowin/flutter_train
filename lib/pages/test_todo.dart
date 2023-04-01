import 'package:flutter/material.dart';
import 'package:flutter_train/database/database.dart';
import 'package:flutter_train/database/todo.dart';

import 'package:flutter_train/pages/todo_input.dart';


class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ToDoRecord>>(

      future: DbHelper.instance.find(), // Future<T> 型を返す非同期処理
      initialData: const [], // null 以外の Future が完了するまで渡される値
      builder: (context, snapshot) {  // future にセットしたメソッドが返した値を snapshot.data で取得できる
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        final todos = snapshot.data!;

        return Scaffold(
          appBar: AppBar(
            title: const Text('ToDo'),
          ),
          body: ListView.builder(
            // ListTileからCheckedListTileに変更します
            itemBuilder: (context, index) {
              final todo = todos[index].value;

              return CheckboxListTile(
                onChanged: (checked) async {
                  final key = todos[index].key;
                  final update = todo.copyWith(
                    archived: !todo.archived,
                  );
                  await DbHelper.instance.update(
                    key,
                    update,
                  );
                  setState(() {});
                },
                value: todos[index].value.archived,
                title: Text(todo.title),
              );
            },
            itemCount: todos.length,
          ),

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              ToDoInput.show(context);
            },
          ),
        );
      },
    );
  }
}