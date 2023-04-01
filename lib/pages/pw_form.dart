import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_train/providers.dart';

class PwFormPage extends ConsumerStatefulWidget {
  const PwFormPage({Key? key}) : super(key: key);
  @override
  PwFormPageState createState() => PwFormPageState();
}

class PwFormPageState extends ConsumerState<PwFormPage> {
  String nameText = "";

  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(indexProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.password),
        title: const Text('PasswordForm'),
        centerTitle: true,
        elevation: 10,
        actions: [Text('index:$counter'),],
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
                  decoration: const InputDecoration(
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
                  child: const Text("今入力したPWは...."),),

                Text(nameText, style: const TextStyle(fontSize: 30),),
              ],
            ),
          ),
      )
    );
  }
}
