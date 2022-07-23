// import 'package:flutter/material.dart';

// void main() {
//   runApp(SnackBarDemo());
// }

// class SnackBarDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Snackbar',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('First applocation'),
//           backgroundColor: Colors.grey,
//         ),
//         body: SnackBarPage(),
//       ),
//     );
//   }
// }

// class SnackBarPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // Raised button
//       child: RaisedButton(
//         color: Colors.grey,
//         onPressed: () {
//           // when raised button is pressed
//           // snackbar will appear from bottom of screen
//           final snackBar = SnackBar(
//             content: Text('Snackbar!'),
//           );
//           Scaffold.of(context).showSnackBar(snackBar);
//         },
//         child: Text('Display SnackBar'),
//       ),
//     );
//   }
// }


// //row widged

// // class forth extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Row widget',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(),
// //       debugShowCheckedModeBanner: false,
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //           children: <Widget>[
// //             Container(
// //               decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(10), color: Colors.green),
// //               child: Text(
// //                 "1st",
// //                 style: TextStyle(color: Colors.white, fontSize: 25),
// //               ),
// //             ),
// //             Container(
// //               decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(10), color: Colors.red),
// //               child: Text(
// //                 "2nd",
// //                 style: TextStyle(color: Colors.white, fontSize: 25),
// //               ),
// //             ),
// //             Container(
// //               decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(10),
// //                   color: Colors.purple),
// //               child: Text(
// //                 "3rd",
// //                 style: TextStyle(color: Colors.white, fontSize: 25),
// //               ),
// //             )
// //           ]),
// //     );
// //   }
// // }
