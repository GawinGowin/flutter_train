import 'package:flutter/material.dart';

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
                  Navigator.pop(context);
                },
                child: Text("前の画面"),),
      
            ),
          ],
        ),
      )

    );
  }
}
