import 'package:flutter/material.dart';

class DetailPanda extends StatelessWidget {
  final String hewan;
  final String nama;
  final String latin;
  final String family;
  final String masaHidup;
  final String jenisMakanan;
  const DetailPanda(
      {Key? key,
      required this.hewan,
      required this.nama,
      required this.latin,
      required this.masaHidup,
      required this.family,
      required this.jenisMakanan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Color(0xFF8C062F), shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size:20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '$nama',
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(5.0, 5.0),
                                blurRadius: 3,
                                color: Color.fromARGB(255, 0, 0, 0))
                          ],
                          color: Colors.white,
                          fontFamily: 'Oto',
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image(
                        image: AssetImage('images/$hewan.png'),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Card(
                        elevation: 10,
                        color: Colors.deepOrange[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text('      Nama Latin', '$latin'),
                            text('      Masa Hidup', '$masaHidup'),
                            text('      Family', '$family'),
                            text('      Jenis Makan', '$jenisMakanan')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$nama',
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 3,
                                    color: Color.fromARGB(255, 0, 0, 0))
                              ],
                              color: Colors.white,
                              fontFamily: 'Oto',
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 150,
                          child: Image(
                            image: AssetImage('images/$hewan.png'),
                          ),
                        ),
                      ]),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Card(
                      elevation: 10,
                      color: Colors.deepOrange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment(-0.4, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text('      Nama Latin', '$latin'),
                            text('      Masa Hidup', '$masaHidup'),
                            text('      Family', '$family'),
                            text('      Jenis Makan', '$jenisMakanan')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Text text(String jenis, String isi) {
    return Text(
      '$jenis: \n             $isi',
      style: TextStyle(
          fontFamily: 'Oto', fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
