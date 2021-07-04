import 'package:belajar/animal/ant_eater.dart';
import 'package:belajar/animal/bear.dart';
import 'package:belajar/animal/bear2.dart';
import 'package:belajar/animal/beaver.dart';
import 'package:belajar/animal/boar.dart';
import 'package:belajar/animal/bull.dart';
import 'package:belajar/animal/camel.dart';
import 'package:belajar/animal/chameleon.dart';
import 'package:belajar/animal/cheetah.dart';
import 'package:belajar/animal/crocodile.dart';
import 'package:belajar/animal/donkey.dart';
import 'package:belajar/animal/duck.dart';
import 'package:belajar/animal/eagle.dart';
import 'package:belajar/animal/elephant.dart';
import 'package:belajar/animal/elk.dart';
import 'package:belajar/animal/fox.dart';
import 'package:belajar/animal/frog.dart';
import 'package:belajar/animal/giraffe.dart';
import 'package:belajar/animal/goat.dart';
import 'package:belajar/animal/goose.dart';
import 'package:belajar/animal/gorilla.dart';
import 'package:belajar/animal/hamster.dart';
import 'package:belajar/animal/hedgehog.dart';
import 'package:belajar/animal/hippo.dart';
import 'package:belajar/animal/horse.dart';
import 'package:belajar/animal/kangaroo.dart';
import 'package:belajar/animal/koala.dart';
import 'package:belajar/animal/lemur.dart';
import 'package:belajar/animal/lion.dart';
import 'package:belajar/animal/llama.dart';
import 'package:belajar/animal/meerkat.dart';
import 'package:belajar/animal/monkey.dart';
import 'package:belajar/animal/ostrich.dart';
import 'package:belajar/animal/owl.dart';
import 'package:belajar/animal/panda.dart';
import 'package:belajar/animal/parrot.dart';
import 'package:belajar/animal/penguin.dart';
import 'package:belajar/animal/puma.dart';
import 'package:belajar/animal/rabbit.dart';
import 'package:belajar/animal/raccoon.dart';
import 'package:belajar/animal/rhinoceros.dart';
import 'package:belajar/animal/sloth.dart';
import 'package:belajar/animal/snake.dart';
import 'package:belajar/animal/tiger.dart';
import 'package:belajar/animal/turtle.dart';
import 'package:belajar/animal/walrus.dart';
import 'package:belajar/animal/wolf.dart';
import 'package:belajar/animal/zebra.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AnimalData(),
      debugShowCheckedModeBanner: false,
    ));

class AnimalData extends StatelessWidget {
  const AnimalData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8C062F),
          title: Text('My Zoo', style: TextStyle(fontFamily: 'Oto')),
          leading: Icon(Icons.nature),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline_rounded),
              splashRadius: 0.1,
            )
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
          ListView(
            children: [
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '001-panda', 'Panda'),
                            animalIconPotrait(context, '002-lion', 'Singa'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '003-tiger', 'Harimau'),
                            animalIconPotrait(
                                context, '004-bear-1', 'Beruang Kutub'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '005-parrot', 'Burung Beo'),
                            animalIconPotrait(context, '006-rabbit', 'Kelinci'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '007-chameleon', 'Bunglon'),
                            animalIconPotrait(context, '008-sloth', 'Kungkang'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '009-elk', 'Rusa'),
                            animalIconPotrait(context, '010-llama', 'Ilama'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '011-ant-eater', 'Pemakan Semut'),
                            animalIconPotrait(context, '012-eagle', 'Elang'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '013-crocodile', 'Buaya'),
                            animalIconPotrait(
                                context, '014-beaver', 'Berang-berang'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '015-hamster', 'Hamster'),
                            animalIconPotrait(
                                context, '016-walrus', 'Anjing Laut'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '017-bear', 'Beruang'),
                            animalIconPotrait(
                                context, '018-cheetah', 'Cheetah'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '019-kangaroo', 'Kangguru'),
                            animalIconPotrait(context, '020-duck', 'Bebek'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '021-goose', 'Angsa'),
                            animalIconPotrait(context, '022-lemur', 'Lemur'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '023-ostrich', 'Burung Unta'),
                            animalIconPotrait(
                                context, '024-owl', 'Burung Hantu'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '025-boar', 'Babi Hutan'),
                            animalIconPotrait(
                                context, '026-penguin', 'Pinguin'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '027-camel', 'Unta'),
                            animalIconPotrait(context, '028-raccoon', 'Rakun'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '029-hippo', 'Kuda Nil'),
                            animalIconPotrait(context, '030-monkey', 'Kera'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '031-meerkat', 'Merkat'),
                            animalIconPotrait(context, '032-snake', 'Ular'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '033-zebra', 'Zebra'),
                            animalIconPotrait(context, '034-donkey', 'Keledai'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '035-bull', 'Banteng'),
                            animalIconPotrait(context, '036-goat-1', 'Kambing'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '038-horse', 'Kuda'),
                            animalIconPotrait(context, '039-wolf', 'Serigala'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '040-koala', 'Koala'),
                            animalIconPotrait(
                                context, '041-hedgehog', 'Landak'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '042-frog', 'Katak'),
                            animalIconPotrait(
                                context, '043-turtle', 'Kura-kura'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '044-gorilla', 'Gorila'),
                            animalIconPotrait(
                                context, '045-giraffe', 'Jerapah'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(
                                context, '047-rhinoceros', 'Badak'),
                            animalIconPotrait(context, '048-elephant', 'Gajah'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconPotrait(context, '049-puma', 'Puma'),
                            animalIconPotrait(context, '050-fox', 'Rubah'),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '001-panda', 'Panda'),
                            animalIconLandscape(context, '002-lion', 'Singa'),
                            animalIconLandscape(
                                context, '003-tiger', 'Harimau'),
                            animalIconLandscape(
                                context, '004-bear-1', 'Beruang Kutub'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(
                                context, '005-parrot', 'Burung Beo'),
                            animalIconLandscape(
                                context, '006-rabbit', 'Kelinci'),
                            animalIconLandscape(
                                context, '007-chameleon', 'Bunglon'),
                            animalIconLandscape(
                                context, '008-sloth', 'Kungkang'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '009-elk', 'Rusa'),
                            animalIconLandscape(context, '010-llama', 'Ilama'),
                            animalIconLandscape(
                                context, '011-ant-eater', 'Pemakan Semut'),
                            animalIconLandscape(context, '012-eagle', 'Elang'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(
                                context, '013-crocodile', 'Buaya'),
                            animalIconLandscape(
                                context, '014-beaver', 'Berang-berang'),
                            animalIconLandscape(
                                context, '015-hamster', 'Hamster'),
                            animalIconLandscape(
                                context, '016-walrus', 'Anjing Laut'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '017-bear', 'Beruang'),
                            animalIconLandscape(
                                context, '018-cheetah', 'Cheetah'),
                            animalIconLandscape(
                                context, '019-kangaroo', 'Kangguru'),
                            animalIconLandscape(context, '020-duck', 'Bebek'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '021-goose', 'Angsa'),
                            animalIconLandscape(context, '022-lemur', 'Lemur'),
                            animalIconLandscape(
                                context, '023-ostrich', 'Burung Unta'),
                            animalIconLandscape(
                                context, '024-owl', 'Burung Hantu'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(
                                context, '025-boar', 'Babi Hutan'),
                            animalIconLandscape(
                                context, '026-penguin', 'Pinguin'),
                            animalIconLandscape(context, '027-camel', 'Unta'),
                            animalIconLandscape(
                                context, '028-raccoon', 'Rakun'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(
                                context, '029-hippo', 'Kuda Nil'),
                            animalIconLandscape(context, '030-monkey', 'Kera'),
                            animalIconLandscape(
                                context, '031-meerkat', 'Merkat'),
                            animalIconLandscape(context, '032-snake', 'Ular'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '033-zebra', 'Zebra'),
                            animalIconLandscape(
                                context, '034-donkey', 'Keledai'),
                            animalIconLandscape(context, '035-bull', 'Banteng'),
                            animalIconLandscape(
                                context, '036-goat-1', 'Kambing'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '038-horse', 'Kuda'),
                            animalIconLandscape(
                                context, '039-wolf', 'Serigala'),
                            animalIconLandscape(context, '040-koala', 'Koala'),
                            animalIconLandscape(
                                context, '041-hedgehog', 'Landak'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(context, '042-frog', 'Katak'),
                            animalIconLandscape(
                                context, '043-turtle', 'Kura-kura'),
                            animalIconLandscape(
                                context, '044-gorilla', 'Gorila'),
                            animalIconLandscape(
                                context, '045-giraffe', 'Jerapah'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            animalIconLandscape(
                                context, '047-rhinoceros', 'Badak'),
                            animalIconLandscape(
                                context, '048-elephant', 'Gajah'),
                            animalIconLandscape(context, '049-puma', 'Puma'),
                            animalIconLandscape(context, '050-fox', 'Rubah'),
                          ],
                        ),
                      ],
                    )
            ],
          ),
        ]),
      ),
    );
  }

  GestureDetector animalIconPotrait(
      BuildContext context, String nameIcon, String animal) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          if (nameIcon == '001-panda') {
            return DetailPanda();
          } else if (nameIcon == '002-lion') {
            return DetailLion();
          } else if (nameIcon == '003-tiger') {
            return DetailTiger();
          } else if (nameIcon == '004-bear-1') {
            return DetailBear();
          } else if (nameIcon == '005-parrot') {
            return DetailParrot();
          } else if (nameIcon == '006-rabbit') {
            return DetailRabbit();
          } else if (nameIcon == '007-chameleon') {
            return DetailChameleon();
          } else if (nameIcon == '008-sloth') {
            return DetailSloth();
          } else if (nameIcon == '009-elk') {
            return DetailElk();
          } else if (nameIcon == '010-llama') {
            return DetailIlama();
          } else if (nameIcon == '011-ant-eater') {
            return DetailAntEater();
          } else if (nameIcon == '012-eagle') {
            return DetailEagle();
          } else if (nameIcon == '013-crocodile') {
            return DetailCrocodile();
          } else if (nameIcon == '014-beaver') {
            return DetailBeaver();
          } else if (nameIcon == '015-hamster') {
            return DetailHamster();
          } else if (nameIcon == '016-walrus') {
            return DetailWalrus();
          } else if (nameIcon == '017-bear') {
            return DetailBear2();
          } else if (nameIcon == '018-cheetah') {
            return DetailCheetah();
          } else if (nameIcon == '019-kangaroo') {
            return DetailKangaroo();
          } else if (nameIcon == '020-duck') {
            return DetailDuck();
          } else if (nameIcon == '021-goose') {
            return DetailGoose();
          } else if (nameIcon == '022-lemur') {
            return DetailLemur();
          } else if (nameIcon == '023-ostrich') {
            return DetailOstrich();
          } else if (nameIcon == '024-owl') {
            return DetailOwl();
          } else if (nameIcon == '025-boar') {
            return DetailBoar();
          } else if (nameIcon == '026-penguin') {
            return DetailPenguin();
          } else if (nameIcon == '027-camel') {
            return DetailCamel();
          } else if (nameIcon == '028-raccoon') {
            return DetailRaccoon();
          } else if (nameIcon == '029-hippo') {
            return DetailHippo();
          } else if (nameIcon == '030-monkey') {
            return DetailMonkey();
          } else if (nameIcon == '031-meerkat') {
            return DetailMeerkat();
          } else if (nameIcon == '032-snake') {
            return DetailSnake();
          } else if (nameIcon == '033-zebra') {
            return DetailZebra();
          } else if (nameIcon == '034-donkey') {
            return DetailDonkey();
          } else if (nameIcon == '035-bull') {
            return DetailBull();
          } else if (nameIcon == '036-goat-1') {
            return DetailGoat();
          } else if (nameIcon == '038-horse') {
            return DetailHorse();
          } else if (nameIcon == '039-wolf') {
            return DetailWolf();
          } else if (nameIcon == '040-koala') {
            return DetailKoala();
          } else if (nameIcon == '041-hedgehog') {
            return DetailHedgehog();
          } else if (nameIcon == '042-frog') {
            return DetailFrog();
          } else if (nameIcon == '043-turtle') {
            return DetailTurtle();
          } else if (nameIcon == '044-gorilla') {
            return DetailGorilla();
          } else if (nameIcon == '045-giraffe') {
            return DetailGiraffe();
          } else if (nameIcon == '047-rhinoceros') {
            return DetailRhinoceros();
          } else if (nameIcon == '048-elephant') {
            return DetailElephant();
          } else if (nameIcon == '049-puma') {
            return DetailPuma();
          } else if (nameIcon == '050-fox') {
            return DetailFox();
          }
          return DetailPanda();
        }));
      },
      child: Hero(
        tag: 'x',
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Card(
            elevation: 5,
            color: Colors.deepOrange[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Image(image: AssetImage('images/$nameIcon.png'))),
                Text(
                  '$animal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Oto',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector animalIconLandscape(
      BuildContext context, String nameIcon, String animal) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          if (nameIcon == '001-panda') {
            return DetailPanda();
          } else if (nameIcon == '002-lion') {
            return DetailLion();
          } else if (nameIcon == '003-tiger') {
            return DetailTiger();
          } else if (nameIcon == '004-bear-1') {
            return DetailBear();
          } else if (nameIcon == '005-parrot') {
            return DetailParrot();
          } else if (nameIcon == '006-rabbit') {
            return DetailRabbit();
          } else if (nameIcon == '007-chameleon') {
            return DetailChameleon();
          } else if (nameIcon == '008-sloth') {
            return DetailSloth();
          } else if (nameIcon == '009-elk') {
            return DetailElk();
          } else if (nameIcon == '010-llama') {
            return DetailIlama();
          } else if (nameIcon == '011-ant-eater') {
            return DetailAntEater();
          } else if (nameIcon == '012-eagle') {
            return DetailEagle();
          } else if (nameIcon == '013-crocodile') {
            return DetailCrocodile();
          } else if (nameIcon == '014-beaver') {
            return DetailBeaver();
          } else if (nameIcon == '015-hamster') {
            return DetailHamster();
          } else if (nameIcon == '016-walrus') {
            return DetailWalrus();
          } else if (nameIcon == '017-bear') {
            return DetailBear2();
          } else if (nameIcon == '018-cheetah') {
            return DetailCheetah();
          } else if (nameIcon == '019-kangaroo') {
            return DetailKangaroo();
          } else if (nameIcon == '020-duck') {
            return DetailDuck();
          } else if (nameIcon == '021-goose') {
            return DetailGoose();
          } else if (nameIcon == '022-lemur') {
            return DetailLemur();
          } else if (nameIcon == '023-ostrich') {
            return DetailOstrich();
          } else if (nameIcon == '024-owl') {
            return DetailOwl();
          } else if (nameIcon == '025-boar') {
            return DetailBoar();
          } else if (nameIcon == '026-penguin') {
            return DetailPenguin();
          } else if (nameIcon == '027-camel') {
            return DetailCamel();
          } else if (nameIcon == '028-raccoon') {
            return DetailRaccoon();
          } else if (nameIcon == '029-hippo') {
            return DetailHippo();
          } else if (nameIcon == '030-monkey') {
            return DetailMonkey();
          } else if (nameIcon == '031-meerkat') {
            return DetailMeerkat();
          } else if (nameIcon == '032-snake') {
            return DetailSnake();
          } else if (nameIcon == '033-zebra') {
            return DetailZebra();
          } else if (nameIcon == '034-donkey') {
            return DetailDonkey();
          } else if (nameIcon == '035-bull') {
            return DetailBull();
          } else if (nameIcon == '036-goat-1') {
            return DetailGoat();
          } else if (nameIcon == '038-horse') {
            return DetailHorse();
          } else if (nameIcon == '039-wolf') {
            return DetailWolf();
          } else if (nameIcon == '040-koala') {
            return DetailKoala();
          } else if (nameIcon == '041-hedgehog') {
            return DetailHedgehog();
          } else if (nameIcon == '042-frog') {
            return DetailFrog();
          } else if (nameIcon == '043-turtle') {
            return DetailTurtle();
          } else if (nameIcon == '044-gorilla') {
            return DetailGorilla();
          } else if (nameIcon == '045-giraffe') {
            return DetailGiraffe();
          } else if (nameIcon == '047-rhinoceros') {
            return DetailRhinoceros();
          } else if (nameIcon == '048-elephant') {
            return DetailElephant();
          } else if (nameIcon == '049-puma') {
            return DetailPuma();
          } else if (nameIcon == '050-fox') {
            return DetailFox();
          }
          return DetailPanda();
        }));
      },
      child: Hero(
        tag: 'x',
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Card(
            elevation: 5,
            color: Colors.deepOrange[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image(image: AssetImage('images/$nameIcon.png'))),
                Text(
                  '$animal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Oto',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
