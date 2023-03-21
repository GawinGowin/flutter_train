import 'package:flutter/material.dart';


class ThirdPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', "a"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third"),
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

            Container(
              child: ElevatedButton(
              onPressed: (){
                  Navigator.pop(context);
                  Navigator.pop(context);
              },
              child: Text("戻る"),),
            ),

    );
  }
}
