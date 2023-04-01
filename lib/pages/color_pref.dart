import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_train/providers.dart';

import "package:shared_preferences/shared_preferences.dart";

class ColorPrefPage extends ConsumerStatefulWidget {
  const ColorPrefPage({Key? key}) : super(key: key);

  @override
  ColorPrefPageState createState() => ColorPrefPageState();
}

class ColorPrefPageState extends ConsumerState<ColorPrefPage> {
  final _controller = TextEditingController();
  double _r = 0.0;
  double _g = 0.0;
  double _b = 0.0;

  @override
  void initState(){
    super.initState();
    loadPref();
  }

  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(indexProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.palette),
        title: const Text('ColorPalette'),
        centerTitle: true,
        elevation: 10,
        actions: [Text('index:$counter'),],
      ),

      body: Column(children: <Widget>[
        TextField(
          controller: _controller,
          style: TextStyle(fontSize: 24),
          minLines: 1,
          maxLines: 5,
        ),
        Slider(
          value: _r,
          onChanged: (double value){setState(() {_r = value;});},
          min:0.0,
          max:255.0,
          divisions: 255,
        ),
        Slider(
          value: _g,
          onChanged: (double value){setState(() {_g = value;});},
          min:0.0,
          max:255.0,
          divisions: 255,
        ),
        Slider(
          value: _b,
          onChanged: (double value){setState(() {_b = value;});},
          min:0.0,
          max:255.0,
          divisions: 255,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: 125,
          height: 125,
          color: Color.fromARGB(255, _r.toInt(), _g.toInt(), _b.toInt()),
        ),

        ElevatedButton(
          onPressed: (){
            savePref();
            showDialog(
              context: context,
              builder: (BuildContext context) => const AlertDialog(
                title: Text("Saved!"),
                content: Text("色情報を保存しました。")
              )
            );
          },
          child: const Text("Save"),
        ),

      ]),
    );
  }

  void loadPref() async{
    final prefs = await SharedPreferences.getInstance();
    setState((){
      _r = (prefs.getDouble("r") ?? 0.0);
      _g = (prefs.getDouble("g") ?? 0.0);
      _b = (prefs.getDouble("b") ?? 0.0);
      _controller.text = (prefs.getString("input") ?? "");
    });
  }

  void savePref() async{
  final prefs = await SharedPreferences.getInstance();
  prefs.setDouble("r", _r);
  prefs.setDouble("g", _g);
  prefs.setDouble("b", _b);
  prefs.setString("input", _controller.text);
  }
}