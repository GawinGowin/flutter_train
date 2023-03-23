import 'package:flutter/material.dart';
import 'package:flutter_train/third_page.dart';

class SecondPage extends StatelessWidget {
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
            Text("temp !!!!", style: TextStyle(fontSize: 50),),
            ],
        ),
      )

    );
  }
}
