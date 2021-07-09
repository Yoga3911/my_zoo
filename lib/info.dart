import 'package:flutter/material.dart';

class InfoApp extends StatelessWidget {
  const InfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration:
            BoxDecoration(color: Color(0xFF8C062F), shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
              child: SizedBox(
            width: (MediaQuery.of(context).orientation == Orientation.portrait)
                ? MediaQuery.of(context).size.width * 0.8
                : MediaQuery.of(context).size.width * 0.6,
            height: (MediaQuery.of(context).orientation == Orientation.portrait)
                ? MediaQuery.of(context).size.height * 0.5
                : MediaQuery.of(context).size.height * 0.85,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.deepOrange[100],
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'My Zoo',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        color: Color(0xFF8C062F),
                        fontFamily: 'Oto',
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  Text(
                    'Credit:\n• Icon design by Freepik from Flaticon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF8C062F),
                        fontFamily: 'Oto',
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Text(
                    'Contact me:\nyoga3911@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF8C062F),
                        fontFamily: 'Oto',
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
