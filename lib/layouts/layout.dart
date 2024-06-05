import 'package:flutter/material.dart';
import './widgets/appbar.dart';
import './widgets/drawer.dart';
import './widgets/navDrawer.dart';
import './responsive_layout.dart';
import './mobile_scaffold.dart';
import './tablet_scaffold.dart';
import './desktop_scaffold.dart';

class MainLayout extends StatelessWidget{
  final Widget body;
  final Widget? floatingActionButton;
  
  MainLayout({required this.body, this.floatingActionButton});


  @override
  Widget build(context){
    return ResponsiveLayout(
      mobileScaffold: const MobileScaffold(), 
      tabletScaffold: const TabletScaffold(), 
      desktopScaffold: const DesktopScaffold()
      );
  }
}
  // @override
  // Widget build(context) => Scaffold(
  //   appBar: appbar,
  //   // drawer: drawer,
  //   body: Row(children: [
  //     navDrawer,
  //     body
  //   ],),
  //   floatingActionButton: this.floatingActionButton,
  // );
