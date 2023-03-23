import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_train/first_page.dart';
import 'package:flutter_train/second_page.dart';
import 'package:flutter_train/third_page.dart';
import 'package:flutter_train/fourth_page.dart';


void main() {
  const app = MaterialApp(home: Rooter());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final indexProvider = StateProvider((ref){
  return 0;
});

class Rooter extends ConsumerWidget {
  const Rooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);
    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label:"home"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.schedule),
        label:"schedule"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.air),
        label:"air"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings_outlined),
        label:"s"
        ),
    ];
    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.grey[200],
      selectedItemColor: Colors.amber[600],
      unselectedItemColor: Colors.grey,
      currentIndex: index,
      onTap: (index){
        ref.read(indexProvider.notifier).state = index;
      },
    );

    final pages = [
      FirstPage(),
      SecondPage("temp"),
      ThirdPage(),
      FourthPage()
    ];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
  }
}
