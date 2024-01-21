import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class VerticalImage extends StatelessWidget {
  final String gambar;

  const VerticalImage({
    super.key,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            gambar,
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: 70,
      height: 300,
    );
  }
}

class ContainerImage extends StatelessWidget {
  final String nama;
  final String gambar;

  const ContainerImage({
    super.key,
    required this.nama,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.red,
        height: 200,
        width: 370,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      gambar,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                nama,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasiku'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Berita Terbaru'),
                    Text('Pertandingan Hari Ini'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  VerticalImage(
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/e/e5/Kylian_Mbapp%C3%A9_2018.jpg',
                  ),
                  VerticalImage(
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/2019147200143_2019-05-27_Fussball_1.FC_Kaiserslautern_vs_FC_Bayern_M%C3%BCnchen_-_Sven_-_1D_X_MK_II_-_2462_-_B70I0762_%28cropped%29_%28cropped%29.jpg/170px-2019147200143_2019-05-27_Fussball_1.FC_Kaiserslautern_vs_FC_Bayern_M%C3%BCnchen_-_Sven_-_1D_X_MK_II_-_2462_-_B70I0762_%28cropped%29_%28cropped%29.jpg',
                  ),
                  VerticalImage(
                    gambar: 'https://i.imgur.com/y3tiFXO.jpg',
                  ),
                  VerticalImage(
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg',
                  ),
                  VerticalImage(
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/2/23/Cristiano_Ronaldo_WC2022_-_01.jpg',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Lima Pesepak Bola yang terkenal dermawan'),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ContainerImage(
                    nama: 'Bruno Fernandes',
                    gambar:
                        'https://cdn1-production-images-kly.akamaized.net/0OUuTkxAck6xEnly0odnOhsaYFY=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3064629/original/088087100_1583074512-bruno_MU.jpg',
                  ),
                  ContainerImage(
                    nama: 'Harry Maguire',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/b/be/Harry_Maguire_2018-07-11_1.jpg',
                  ),
                  ContainerImage(
                    nama: 'Ter Stegen',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Marc-Andr%C3%A9_ter_Stegen_%28FC_Barcelona%29%2C_Mattias_Ekstr%C3%B6m_%28EKS%29_%2820910648614%29_%28cropped%29.jpg/170px-Marc-Andr%C3%A9_ter_Stegen_%28FC_Barcelona%29%2C_Mattias_Ekstr%C3%B6m_%28EKS%29_%2820910648614%29_%28cropped%29.jpg',
                  ),
                  ContainerImage(
                    nama: 'Kevin de Bruyne',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Kevin_De_Bruyne_201807091.jpg/640px-Kevin_De_Bruyne_201807091.jpg',
                  ),
                  ContainerImage(
                    nama: 'Neymar',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/6/65/20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Neymar_850_1705.jpg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
