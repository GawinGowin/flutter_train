import 'dart:math';

import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int myChoice = 1;
  int cpuChoice = 1;
  String result = "";

  void selectNo(int number){
    myChoice = number;
    print("myChoice:$myChoice");
    generateCpuHand();
    judge();
    setState(() {});
  }

  void generateCpuHand(){
    cpuChoice = Random().nextInt(3);
    print("cpuChoice:$cpuChoice");
  }

  void judge(){
    if(myChoice == cpuChoice){
      result = "$myChoice = $cpuChoice";
    }

    else if (myChoice > cpuChoice){
      result = "$myChoice > $cpuChoice";
    }
    else if (myChoice < cpuChoice){
      result = "$myChoice < $cpuChoice";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fourth"),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
      
          children: <Widget>[
            Text("myChoice   randomInt",
            style: TextStyle(fontSize: 32,)            
            ),

            Text(result,
            style: TextStyle(fontSize: 32,)            
            ),

            ElevatedButton(
              onPressed: (){
                print(myChoice);
              },
            child: Text("No$myChoice"),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    selectNo(1);
                  },
                child: Text("No1"),),

                ElevatedButton(
                  onPressed: (){
                    selectNo(2);
                  },
                child: Text("No2"),),

                ElevatedButton(
                  onPressed: (){
                    selectNo(3);
                  },
                child: Text("No3"),),
              ],

            ),   

          ]
        ),
      )

    );
  }
}
