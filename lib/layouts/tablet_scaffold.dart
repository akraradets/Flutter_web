import 'package:flutter/material.dart';
import 'package:flutter_web/layouts/widgets/appbar.dart';
import 'package:flutter_web/layouts/widgets/drawer.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey[300],
      drawer: myDrawer,
    );
  }
}