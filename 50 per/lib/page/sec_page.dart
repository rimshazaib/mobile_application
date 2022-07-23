import 'package:flutter/material.dart';
import 'package:new_project/group/group_info.dart';
import 'package:new_project/group/groups.dart';
//this page is showing + icon to add items
class sec_page extends StatelessWidget {
  const sec_page({Key? key}) : super(key: key);

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
  List<group> userList = [];

  @override
  Widget build(BuildContext context) {
    void addUserData(group user) {
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
      body: Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  userList[index].Name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  userList[index].Name,
                  style: TextStyle(
                    fontSize: 18,
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
