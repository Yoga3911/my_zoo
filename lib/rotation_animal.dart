import 'package:belajar/detail_animal.dart';
import 'package:flutter/material.dart';

class AnimalRotation extends StatelessWidget {
  const AnimalRotation({
    Key? key,
    required this.context,
    required this.nameIcon,
    required this.animal,
    required this.latinHewan,
    required this.hidupHewan,
    required this.familyHewan,
    required this.makananHewan,
  }) : super(key: key);

  final BuildContext context;
  final String nameIcon;
  final String animal;
  final String latinHewan;
  final String hidupHewan;
  final String familyHewan;
  final String makananHewan;

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).orientation == Orientation.portrait)
        ? GestureDetector(
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  color: Colors.deepOrange[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child:
                              Image(image: AssetImage('images/$nameIcon.png'))),
                      Text(
                        '$animal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Oto',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPanda(
                  hewan: nameIcon,
                  nama: animal,
                  latin: latinHewan,
                  masaHidup: hidupHewan,
                  family: familyHewan,
                  jenisMakanan: makananHewan,
                );
              }));
            },
          )
        : GestureDetector(
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  color: Colors.deepOrange[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.13,
                          child:
                              Image(image: AssetImage('images/$nameIcon.png'))),
                      Text(
                        '$animal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Oto',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPanda(
                    hewan: nameIcon,
                    nama: animal,
                    latin: latinHewan,
                    masaHidup: hidupHewan,
                    family: familyHewan,
                    jenisMakanan: makananHewan);
              }));
            },
          );
  }
}
