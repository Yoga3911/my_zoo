import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: DetailSloth(),
      debugShowCheckedModeBanner: false,
    ));

class DetailSloth extends StatelessWidget {
  const DetailSloth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Center(
                child: Hero(
                  tag: 'x',
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image(image: AssetImage('images/008-sloth.png'),),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text('Kembali'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ));
  }
}