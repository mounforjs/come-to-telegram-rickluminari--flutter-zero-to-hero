import 'package:flutter/material.dart';

import '../widgets/navbar_widget.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App', style: TextStyle(color: Colors.white)),
      ), //ssd
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
