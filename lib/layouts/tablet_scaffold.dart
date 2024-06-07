import 'package:flutter/material.dart';
import 'package:flutter_web/layouts/widgets/appbar.dart';
import 'package:flutter_web/layouts/widgets/drawer.dart';
import 'package:flutter_web/layouts/widgets/tiles.dart';
import 'package:flutter_web/layouts/widgets/top_box.dart';

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
      body: Column(children: [
        AspectRatio(aspectRatio: 4,
        child: SizedBox(
          width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4
              ), 
            itemBuilder: (context, index){
              return const TopBox();
          }),
        ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount:5, 
            itemBuilder: (context, index){
              return const MyTile();
            },
          ),
        )]
      ),
    );
  }
}