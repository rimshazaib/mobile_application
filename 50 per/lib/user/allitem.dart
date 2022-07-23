import 'package:flutter/material.dart';
import 'package:new_project/page/first_page.dart';
import 'package:new_project/user/user_dialog.dart';
import 'package:new_project/page/user.dart';
import 'package:new_project/main.dart';

class allitems extends StatelessWidget {
  const allitems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFlutterList(),
    );
  }
}

class MyFlutterList extends StatefulWidget {
  const MyFlutterList({Key? key}) : super(key: key);

  @override
  _MyFlutterListState createState() => _MyFlutterListState();
}

class _MyFlutterListState extends State<MyFlutterList> {
  List<User> userList = [];

  @override
  Widget build(BuildContext context) {
    void addUserData(User user) {
      setState(() {
        userList.add(user);
      });
    }

    void showUserDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: AddUserDialog(addUserData),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDialog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Items List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
           // Navigator.push(context, MaterialPageRoute(builder:(context)=>MyApp()),);
          },
        ),
      ),
      body: Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  userList[index].username,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          itemCount: userList.length,
        ),
      ),
    );
  }
}






/*import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:new_project/services/item_services.dart';
import 'item_modify.dart';
import 'note.dart';
import 'item_delete.dart';
import 'package:new_project/services/item_services.dart';

// class allitems extends StatelessWidget {

//   final notes = [
//  Note (itemID:'1',name:'Novita',
//   category:'medicine'),
//    Note (itemID:'2',name:'sleeping pills',
//   category:'medicine'),
//    Note (itemID:'3',name:'corn flex',
//   category:'food'),
   
// ];



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('List of notes')),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(MaterialPageRoute(builder: (_)=> item_modify()));
//         },
//         child: Icon(Icons.add),
//       ),
//       body: ListView.separated(
//         separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
//         itemBuilder: (_, index) {
//           return  Dismissible(
//              key: ValueKey(notes[index].itemID),
//             direction: DismissDirection.startToEnd,
//             onDismissed: (direction) {
//             },
//             confirmDismiss: (direction) async {
//               final result = await showDialog(
//                 context: context,
//                 builder: (_) => item_delete()
//               );
//               if (kDebugMode) {
//                 print(result);
//               }
//               return result;
//             },
//             background: Container(
//               color: Colors.red,
//               padding: EdgeInsets.only(left: 16),
//               child: Align(child: Icon(Icons.delete, color: Colors.white), alignment: Alignment.centerLeft,),
//             ),
//             child: ListTile(
//                 title: Text(
//                   notes[index].name,
//                   style: TextStyle(color: Theme.of(context).primaryColor),
//                 ),
//                 subtitle: Text(notes[index].category),
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=> item_modify(itemID:notes[index].itemID)));
//                 },
//             ),
//           );
//         },
//         itemCount: notes.length,
//       ),
//     );
//   }
// }



class allitems extends StatefulWidget{

itemservices get Service => GetIt.I<itemservices>();
List<Note> notes=[];
@override
void initstate(){
  notes=Service.getNotesList();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of items')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => item_modify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemBuilder: (_, index) {
          return Dismissible(
            key: ValueKey(notes[index].itemID),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
            },
            confirmDismiss: (direction) async {
              final result = await showDialog(
                context: context,
                builder: (_) => item_delete()
              );
              print(result);
              return result;
            },
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.only(left: 16),
              child: Align(child: Icon(Icons.delete, color: Colors.white), alignment: Alignment.centerLeft,),
            ),
            child: ListTile(
              title: Text(
                notes[index].name,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text( notes[index].category,
                style: TextStyle(color: Theme.of(context).primaryColor),),
              onTap: () {
                Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => item_modify(itemID: notes[index].itemID)));
              },
            ),
          );
        },
        itemCount: notes.length,
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}*/