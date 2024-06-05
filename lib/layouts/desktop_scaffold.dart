import 'package:flutter/material.dart';
import 'package:flutter_web/layouts/widgets/appbar.dart';
import 'package:flutter_web/layouts/widgets/drawer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey[300],
      body: Row(
        children: [
          myDrawer
        ],
      )
    );
  }
}