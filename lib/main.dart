import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:flutter_app/widgets/navbar_widget.dart';

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
      home: WidgetTree(),
    ); //sd
  }
}
