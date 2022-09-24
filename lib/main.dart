import 'package:flutter/material.dart';

import 'list_vertikal.dart';
import 'list_horizontal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas pertemuan 3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tugas pertemuan 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "BERITA TERBARU"),
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "PERTANDINGAN HARI INI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          //  ====== list view horizontal ========
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
              ],
            ),
          ),

          //  ====== list view vertikal ========
          Expanded(
            child: ListView(
              children: <Widget>[
                Listvertikal(
                  "https://vid.alarabiya.net/images/2021/02/10/204486ae-ff75-46bd-915e-96568d21777f/204486ae-ff75-46bd-915e-96568d21777f_16x9_1200x676.jpg?width=1120&format=jpg",
                  "Pique Bilang Wasit untungkan Madrid, Koeman Tepok Jidat",
                  "Barcelona Feb 13, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltdf52ffe0c76db3f9/632db732af979244a769b26d/goal---web-two-way-split--3ef54407-3437-4bda-9ba8-965c41da4de9.jpeg?quality=80&format=pjpg&auto=webp&width=1000",
                  "Secara pencapaian tim Werner terbilang sukses bersama The Blues, tapi tidak dengan rapor individunya.",
                  "Indonesia Feb 14, 2022",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt606c2a5c3c3650bc/61cb0df105610911bc6637b6/taeyong.jpg?quality=80&format=pjpg&auto=webp&width=1000",
                  "Keputusan Shin Tae-yong untuk memanggil M Rafli, yang belum menorehkan satu pun gol & assist bagi Arema, menuai kritikan warganet",
                  "Indonesia Feb 23, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltf1b68ba5df2c80f5/632d7b30d39be7409d33c4b1/20220923_144355.jpg?quality=80&format=pjpg&auto=webp&width=1000",
                  "Ranking FIFA: Indonesia Vs Curacao, Siapa Lebih Unggul Di Daftar Peringkat Dunia?",
                  "Indonesia Feb 13, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt0d8cc56c542c5899/62fd0ff39095423762d133a6/goal---web-two-way-split--d387da12-eb00-41bd-b159-ffa712407583.png?quality=80&format=pjpg&auto=webp&width=1000",
                  "Cristiano Ronaldo Didakwa FA Buntut Insiden Banting HP Suporter",
                  "Madrid Feb 15, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltba62cbda37fe6b91/632307df47d7aa35d97f37ab/IMG_20220915_180656.jpg?quality=80&format=pjpg&auto=webp&width=1000",
                  "TONTON Luapan Kekecewaan Bonek Persebaya Surabaya Di Stadion Gelora Delta Sidoarjo",
                  "Sidoarjo Feb 15, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt1da4e11cd971d66e/631ff3ce034bb44c5e13da51/Cover_TV_Schedule.jpg?quality=80&format=pjpg&auto=webp&width=1000",
                  "Jadwal Siaran Langsung Sepakbola TV Indonesia Hari Ini - Nonton Bola Live Malam Ini (Liga Inggris, Liga Champions, Liga Italia, Liga 1 & Lainnya)",
                  "London Sep 16, 2021",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
