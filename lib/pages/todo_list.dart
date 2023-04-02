import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_train/providers.dart';
import 'package:flutter_train/modules/todo_input_view.dart';

class ToDoListPage extends HookConsumerWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ToDoListStateに変更があるとリビルド
    final todos = ref.watch(todoListProvider);
    final todoNotifier = ref.watch(todoListProvider.notifier);
    final counter = ref.watch(indexProvider);

    var isSelected = [false];

    // buildが呼ばれてからToDoリストを読み込む
    useEffect(() {
      todoNotifier.find();
      return;
    }, []);

    return Scaffold(
      appBar: AppBar(
        leading: Text('index:$counter'),
        title: const Text('ToDo'),
        centerTitle: true,
        elevation: 10,
        actions: const [/*Icon(Icons.delete)*/],
      ),
      body: ListView.builder(
        // ListTileからCheckedListTileに変更
        itemBuilder: (context, index) => CheckboxListTile(
          onChanged: (checked) {
            todoNotifier.toggle(todos[index]);
          },
          value: todos[index].value.archived,
          title: GestureDetector(
            onTap: () {
              ToDoInputView.show(
                context,
                record: todos[index],
              );
            },
            child: Text(todos[index].value.title),
          ),
        ),
        itemCount: todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ToDoInputView.show(context);
        },
      ),
    );
  }
}