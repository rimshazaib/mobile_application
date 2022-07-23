import 'package:flutter/material.dart';

import 'groups.dart';

class AddUserDialog extends StatefulWidget {
  final Function(group) addUser;

  AddUserDialog(this.addUser);

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
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

    var nameController = TextEditingController();
    var catController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'New Group',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
            buildTextField('Name', nameController),
            buildTextField('Note(category)', catController),
            ElevatedButton(
              onPressed: () {
                final user = group(nameController.text, catController.text);
                widget.addUser(user);
                Navigator.of(context).pop();
              },
              child: Text('Add group'),
            ),
          ],
        ),
      ),
    );
  }
}
