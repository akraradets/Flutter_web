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
      // appBar: myAppBar,
      backgroundColor: Colors.grey[300],
      drawer: myDrawer,
      body: Column(children: [
        const Text('sdfsdfsdf'),
        AspectRatio(aspectRatio: 1,
        child: SizedBox(
          width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            itemBuilder: (context, index){
              return Container(
                color: Colors.blue,
              );
          }),
        ),)
        
      ],)
    );
  }
}
