import 'package:flutter/material.dart';

import 'package:flutter_train/second_page.dart';

class FirstPage extends StatelessWidget {
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
                    print(text);
                  },


                ),
          
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => SecondPage(nameText)),
                     );
                  },
                  child: Text("今入力したPWは...."),),
              ],
            ),
          ),
      )

    );
  }
}
