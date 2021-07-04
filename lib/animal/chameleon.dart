import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: DetailChameleon(),
      debugShowCheckedModeBanner: false,
    ));

class DetailChameleon extends StatelessWidget {
  const DetailChameleon({Key? key}) : super(key: key);

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
                    child: Image(image: AssetImage('images/007-chameleon.png'),),
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