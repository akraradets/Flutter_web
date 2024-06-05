import 'package:flutter/material.dart';
import 'package:flutter_web/layouts/widgets/drawer.dart';
import 'package:flutter_web/layouts/widgets/appbar.dart';


class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey[300],
      drawer: myDrawer
    );
  }
}
