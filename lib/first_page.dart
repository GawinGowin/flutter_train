import 'package:flutter/material.dart';

import 'package:flutter_train/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first"),
      ),
      
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => SecondPage()),
               );
            },
            child: Text("次の画面に変遷"),),
      
        ),
      )

    );
  }
}
