import 'package:belajar/data.dart';
import 'package:belajar/rotation_animal.dart';
import 'package:belajar/search_data.dart';
import 'package:flutter/material.dart';

class AnimalForSearch extends SearchDelegate<SearchAnimal> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        fontFamily: 'Oto',
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(color: Color(0xFF8C062F)),
        hintColor: Colors.white70);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (getData.isNotEmpty) {
      return getData[0];
    }
    return Container();
  }

  List<Widget> getWidget = [];
  List<Widget> getData = [];
  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadSearchAnimal()
        : loadSearchAnimal().where((element) {
            final animalLower = element.nama.toLowerCase();
            final queryLower = query.toLowerCase();
            return animalLower.startsWith(queryLower);
          }).toList();
    return myList.isEmpty
        ? Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off,
                color: Color(0xFF8C062F),
                size: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(
                'Hewan tidak ditemukan',
                style: TextStyle(fontFamily: 'Oto', fontSize: 20),
              ),
            ],
          ))
        : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 4),
            cacheExtent: 10000,
            itemCount: myList.length,
            itemBuilder: (context, index) {
              final SearchAnimal listitem = myList[index];
              final queryText = listitem.nama.substring(0, query.length);
              final remainingText = listitem.nama.substring(query.length);
              getWidget.add(AnimalRotation(
                context: context,
                nameIcon: Hewan[index]['File'].toString(),
                animal: Hewan[index]['Nama'].toString(),
                latinHewan: Hewan[index]['Latin'].toString(),
                hidupHewan: Hewan[index]['Masa_Hidup'].toString(),
                familyHewan: Hewan[index]['Family'].toString(),
                makananHewan: Hewan[index]['Jenis_Makanan'].toString(),
              ));
              getData.clear();
              return ListTile(
                  leading: Icon(
                    Icons.auto_awesome_outlined,
                    color: Color(0xFF8C062F),
                  ),
                  visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                  onTap: () {
                    query.isNotEmpty
                        ? Hewan.forEach((element) {
                            if (element['Nama']!.contains(
                                query[0].toUpperCase() +
                                    query.substring(1).toLowerCase())) {
                              int indexData = Hewan.indexOf(element);
                              getData.add(getWidget[indexData]);
                            }
                          })
                        : getData.add(AnimalRotation(
                            context: context,
                            nameIcon: Hewan[index]['File'].toString(),
                            animal: Hewan[index]['Nama'].toString(),
                            latinHewan: Hewan[index]['Latin'].toString(),
                            hidupHewan: Hewan[index]['Masa_Hidup'].toString(),
                            familyHewan: Hewan[index]['Family'].toString(),
                            makananHewan:
                                Hewan[index]['Jenis_Makanan'].toString(),
                          ));
                    showResults(context);
                  },
                  title: RichText(
                      text: TextSpan(
                          text: queryText,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Oto'),
                          children: [
                        TextSpan(
                            text: remainingText,
                            style: TextStyle(
                                color: Colors.grey, fontFamily: 'Oto'))
                      ])));
            },
          );
  }
}
