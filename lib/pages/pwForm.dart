import 'package:flutter/material.dart';

class pwFormPage extends StatefulWidget {
  @override
  State<pwFormPage> createState() => _pwFormPageState();
}

class _pwFormPageState extends State<pwFormPage> {
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
