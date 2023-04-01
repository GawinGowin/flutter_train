import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_train/pages/pwForm.dart';
import 'package:flutter_train/pages/colorPref.dart';
import 'package:flutter_train/pages/listVew.dart';
import 'package:flutter_train/pages/mathRand.dart';

void main() {
  const app = MaterialApp(home: Rooter());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final indexProvider = StateProvider((ref) => 0);

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
    ];

    final pages = [
      pwFormPage(),
      colorPrefPage(),
      listVewPage(),
      mathRandPage()
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
