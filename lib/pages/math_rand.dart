import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_train/providers.dart';

class MathRandPage extends ConsumerStatefulWidget {
  const MathRandPage({Key? key}) : super(key: key);
  
  @override
  MathRandPageState createState() => MathRandPageState();
}

class MathRandPageState extends ConsumerState<MathRandPage> {
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
    cpuChoice = Random().nextInt(3)+1;
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
    final counter = ref.watch(indexProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calculate),
        title: const Text('Random'),
        centerTitle: true,
        elevation: 10,
        actions: [Text('index:$counter'),],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
      
          children: <Widget>[
            const Text(
              "myChoice   randomInt",
              style: TextStyle(fontSize: 32,)            
            ),            
            Text(
              result,
              style: const TextStyle(fontSize: 32,)            
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    selectNo(1);
                  },
                child: const Text("No1"),),

                ElevatedButton(
                  onPressed: (){
                    selectNo(2);
                  },
                child: const Text("No2"),),

                ElevatedButton(
                  onPressed: (){
                    selectNo(3);
                  },
                child: const Text("No3"),),
              ],
            ),   
          ]
        ),
      )
    );
  }
}
