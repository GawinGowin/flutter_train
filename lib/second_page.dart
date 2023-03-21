import 'package:flutter/material.dart';
import 'package:flutter_train/first_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second"),
      ),
      
      body: Center(
        child: Container(
            child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("前の画面に変遷"),),
      
        ),
      )

    );
  }
}
