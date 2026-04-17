import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateful - can refresh the screen
//stateless - cannot refresh the screen
//setState - refresh the screen

String title = "My Title";

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
      home: myHomePage(),
    ); //sd
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!, style: TextStyle(color: Colors.white)),
      ), //ssd
      body: currentIndex == 0
          ? Center(
              child: Text(
                "Home Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          : Center(
              child: Text(
                "Profile Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },

        //Your required at least 2 destinations in order to show the navigation bar
        //Otherwise, it will not show the navigation bar and you will get an error
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'None'), //sd
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ), //sd
        ],
      ),
    );
  }
}
