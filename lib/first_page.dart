import 'package:flutter/material.dart';

import 'package:flutter_train/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String nameText = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first"),
      ),
      
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  enabled: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password"
                  ),
                  onChanged: (text){
                    nameText = text;
                  },
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {});
                  },
                  child: Text("今入力したPWは...."),),

                Text("$nameText",style: TextStyle(fontSize: 30),),
                
              ],
            ),
          ),
      )

    );
  }
}
