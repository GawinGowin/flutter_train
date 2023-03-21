import 'package:flutter/material.dart';
import 'package:flutter_train/third_page.dart';

class SecondPage extends StatelessWidget {
  
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second"),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$name !!!!", style: TextStyle(fontSize: 50),),
            Container(
                child: ElevatedButton(
                onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => ThirdPage()),
                     );
                },
                child: Text("次の画面"),),
            ),
          ],
        ),
      )

    );
  }
}
