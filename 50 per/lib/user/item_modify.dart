// import 'package:flutter/material.dart';

// class item_modify extends StatelessWidget {
 
//   final String ? itemID;
//   bool get isEditing => itemID != null;

//   item_modify({this.itemID});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//    appBar: AppBar(title: Text(isEditing ? 'Create note' : 'Edit note')),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Item title'
//               ),
//             ),

//             Container(height: 8),

//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'item category'
//               ),
//             ),

//             Container(height: 16),

//             SizedBox(
//               width: double.infinity,
//               height: 35,
//               child: RaisedButton(
//                 child: Text('Submit', style: TextStyle(color: Colors.white)),
//                 color: Theme.of(context).primaryColor,
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class item_modify extends StatelessWidget {
 
  final String ? itemID;
  bool get isEditing => itemID != null;

  item_modify({this.itemID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? 'Edit note' : 'Create note')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Note title'
              ),
            ),

            Container(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: 'Note content'
              ),
            ),

            Container(height: 16),

            SizedBox(
              width: double.infinity,
              height: 35,
              child: RaisedButton(
                child: Text('Submit', style: TextStyle(color: Colors.white)),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}