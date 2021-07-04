import 'package:belajar/fitur.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Home'),),
        body: Center(
          child: ElevatedButton(child: Text('Fitur'), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Fitur();
            }));
          }),
        ),
      ),
    );
  }
}
