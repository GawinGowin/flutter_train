import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_train/pages/pw_form.dart';
import 'package:flutter_train/pages/color_pref.dart';
import 'package:flutter_train/pages/list_view.dart';
import 'package:flutter_train/pages/math_rand.dart';
import 'package:flutter_train/pages/todo_list.dart';
import 'package:flutter_train/pages/map.dart';

import 'package:flutter_train/providers.dart';
import 'package:flutter_train/database/database.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );  

  final dbHelper = DbHelper();
  await dbHelper.initialize();

  const app = MaterialApp(home: Rooter());
  final scope = ProviderScope(
    overrides: [
      databaseProvider.overrideWithValue(dbHelper),
    ],
    child: app
  );
  runApp(scope);
}

/**
 * Icons:
 * https://fonts.google.com/icons
 *////

class Rooter extends ConsumerWidget {
  const Rooter({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);
    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.password),
        label:"password"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.palette),
        label:"palette"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list),
        label:"list"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calculate),
        label:"calculate"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.dataset),
        label:"database"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.map),
        label:"google map"
        ),        
    ];

    final pages = [
      PwFormPage(),
      ColorPrefPage(),
      ListViewPage(),
      MathRandPage(),
      ToDoListPage(),
      MapPage()
    ];

    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.grey[200],
      selectedItemColor: Colors.amber[600],
      unselectedItemColor: Colors.grey,
      currentIndex: index,
      onTap: (indexTap){
        ref.read(indexProvider.notifier).state = indexTap;
      },
    );

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
  }
}