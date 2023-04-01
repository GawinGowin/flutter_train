import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_train/providers.dart';

class ListViewPage extends ConsumerWidget {
  ListViewPage({Key? key}) : super(key: key);
  final List<int> entries = <int>[for (var i = 0; i < 100; i++) i];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // `ref` を使ってプロバイダーを監視する
    final counter = ref.watch(indexProvider);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text('ListView'),
        centerTitle: true,
        elevation: 10,
        actions: [Text('index:$counter'),],
      ),
      
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        }
      ),
    );
  }
}
