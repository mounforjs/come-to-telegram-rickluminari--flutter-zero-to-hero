import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Demo Home Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          onDestinationSelected: (int value) {
            print(value);
          },

          //Your required at least 2 destinations in order to show the navigation bar
          //Otherwise, it will not show the navigation bar and you will get an error
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'None'), //sd
            NavigationDestination(icon: Icon(Icons.person), label: 'None'), //sd
          ],
        ),
      ),
    ); //sd
  }
}
