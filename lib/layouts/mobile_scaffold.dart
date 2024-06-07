import 'package:flutter/material.dart';
import 'package:flutter_web/layouts/widgets/drawer.dart';
import 'package:flutter_web/layouts/widgets/appbar.dart';
import 'package:flutter_web/layouts/widgets/tiles.dart';
import 'package:flutter_web/layouts/widgets/top_box.dart';


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
      drawer: myDrawer,
      body: Column(children: [
        AspectRatio(aspectRatio: 1,
        child: SizedBox(
          width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
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
        ),
        
      ],)
    );
  }
}
