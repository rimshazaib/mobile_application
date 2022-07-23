import 'package:flutter/material.dart';
import 'package:new_project/page/user.dart';
import 'package:new_project/user/allitem.dart';

class AddUserDialog extends StatefulWidget {
  final Function(User) addUser;

  AddUserDialog(this.addUser);

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  int day = 0;
  var _controller;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _controller.text = selectedDate.toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'New Item',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
            buildTextField('Item name', usernameController),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
            ElevatedButton(
              onPressed: () {
                //final user = User(usernameController.text);
                final user = User(usernameController.text, _controller.text);
                widget.addUser(user);
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>allitems()),);
                Navigator.of(context).pop();
              },
              child: Text('Add item'),
            ),
          ],
        ),
      ),
    );
  }
}
