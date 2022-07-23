import 'package:flutter/material.dart';
import 'package:new_project/user/expired.dart';
//import 'package:new_project/user/user_dialog.dart';
//import 'package:new_project/user/user.dart';
import 'package:new_project/user/allitem.dart';
import 'package:new_project/user/soontoexpire.dart';
//it show 1st screen
class first_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.category, color: Colors.greenAccent),
            title: const Text("All items"),
            subtitle: const Text('show all items in list'),
           // trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => allitems(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock_clock, color: Colors.amber),
            title: const Text("Soon to expire"),
            subtitle: const Text('check items soon to expire'),
           // trailing: Icon(Icons.arrow_forward),
           
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => soontoexpire(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.warning, color: Colors.red),
            title: const Text(" Expired"),
            subtitle: const Text('waste the expired items'),
           // trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => expired_(),
                  ));
            },
          ),
        ],
      ),
    ));
  }
}
