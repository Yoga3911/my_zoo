import 'package:belajar/data.dart';
import 'package:belajar/info.dart';
import 'package:belajar/rotation_animal.dart';
import 'package:belajar/search_animal.dart';
import 'package:flutter/material.dart';

class AnimalData extends StatefulWidget {
  const AnimalData({Key? key}) : super(key: key);

  @override
  _AnimalDataState createState() => _AnimalDataState();
}

class _AnimalDataState extends State<AnimalData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(7),
        decoration:
            BoxDecoration(color: Color(0xFF8C062F), shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(Icons.search, color: Colors.white, size: 25),
          onPressed: () {
            setState(() {
                showSearch(context: context, delegate: AnimalForSearch());
              });
          },
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        backgroundColor: Color(0xFF8C062F),
        title: Text('My Zoo', style: TextStyle(fontFamily: 'Oto')),
        leading: Icon(Icons.nature),
        actions: <Widget>[
          IconButton(
            splashRadius: 20,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InfoApp();
              }));
            },
            icon: Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: GridView.builder(
                cacheExtent: 10000,
                addAutomaticKeepAlives: true,
                physics: AlwaysScrollableScrollPhysics(),
                gridDelegate:
                    (MediaQuery.of(context).orientation == Orientation.portrait)
                        ? const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2,
                          )
                        : const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 4,
                          ),
                itemCount: Hewan.length,
                itemBuilder: (context, index) {
                  return AnimalRotation(
                      context: context,
                      nameIcon: Hewan[index]['File'].toString(),
                      animal: Hewan[index]['Nama'].toString(),
                      latinHewan: Hewan[index]['Latin'].toString(),
                      hidupHewan: Hewan[index]['Masa_Hidup'].toString(),
                      familyHewan: Hewan[index]['Family'].toString(),
                      makananHewan: Hewan[index]['Jenis_Makanan'].toString());
                })),
      ]),
    );
  }
}
