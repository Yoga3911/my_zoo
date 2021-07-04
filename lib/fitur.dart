import 'package:flutter/material.dart';

class Fitur extends StatelessWidget {
  const Fitur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fitur'),),
        body: Center(
          child: ElevatedButton(child: Text('Back'), onPressed: () {
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
}
