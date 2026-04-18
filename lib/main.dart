import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/widget_tree.dart';
import 'package:flutter_app/views/widgets/navbar_widget.dart';

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
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkModeOn, child) {
        return MaterialApp(
          title: "Flutter App",
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: isDarkModeOn ? Brightness.light : Brightness.dark,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: WidgetTree(),
        );
      },
    ); //sd
  }
}
