import 'package:flutter/material.dart';

var myDrawer = Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: const [
            DrawerHeader(child: Icon(Icons.favorite)),
            ListTile(leading: Icon(Icons.home), title: Text('D A S H B O A R D')),
            ListTile(leading: Icon(Icons.chat), title: Text('M E S S A G E')),
            ListTile(leading: Icon(Icons.settings), title: Text('S E T T I N G S')),
            ListTile(leading: Icon(Icons.logout), title: Text('L O G O U T')),
          ],
        ),
      );


// var drawer = Drawer(
//   child: ListView(
//     // Important: Remove any padding from the ListView.
//     padding: EdgeInsets.zero,
//     children: [
//       const DrawerHeader(
//         decoration: BoxDecoration(
//           color: Colors.blue,
//         ),
//         child: Text('Drawer Header'),
//       ),
//       ListTile(
//         title: const Text('Item 1'),
//         onTap: () {
//           // Update the state of the app.
//           // ...
//         },
//       ),
//       ListTile(
//         title: const Text('Item 2'),
//         onTap: () {
//           // Update the state of the app.
//           // ...
//         },
//       ),
//     ],
//   ),
// );
