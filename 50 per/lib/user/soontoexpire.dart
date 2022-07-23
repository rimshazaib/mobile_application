import 'package:flutter/material.dart';

class soontoexpire extends StatelessWidget {
  const soontoexpire({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soon to expire"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: const Text("Sleeping pills"),
              subtitle: const Text('november 19 ,2021'),
              //trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: const Text("corn flake box"),
              subtitle: const Text('november 29 ,2021'),
            ),
            ListTile(
              title: const Text(" Electricity bill"),
              subtitle: const Text('4 feb 2020'),
            ),
          ],
        ),
      ),
    );
  }
}
