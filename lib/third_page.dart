import 'package:flutter/material.dart';
import 'package:flutter_train/fourth_page.dart';

class ThirdPage extends StatelessWidget {
  List<int> entries = <int>[for (var i = 0; i < 100; i++) i];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third"),
      ),
      body:
        new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                }
              ),
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.push(context,
                     MaterialPageRoute(builder: (context) => FourthPage()),
                     );
              },
            child: Text("次の画面"),),

            ElevatedButton(
              onPressed: (){
                  Navigator.pop(context);
                  Navigator.pop(context);
              },
            child: Text("戻る"),),
          ]
        ),
    );
  }
}
