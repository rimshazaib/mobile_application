import 'package:flutter/material.dart';

class expired_ extends StatelessWidget {
  const expired_({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expired items"),
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
