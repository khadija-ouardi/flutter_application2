import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Conan et Haikyuu : Une quête de passion et de déduction.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _coeur = Icon(
    Icons.favorite_border,
    color: const Color.fromARGB(255, 218, 114, 114),
  );
  bool _likeBool = false;

  void _likeThis() {
    setState(() {
      if (_likeBool) {
        _coeur = Icon(
          Icons.favorite_border,
          color: const Color.fromARGB(255, 216, 117, 117),
        );
        _likeBool = false;
      } else {
        _coeur = Icon(
          Icons.favorite,
          color: const Color.fromARGB(255, 226, 114, 114),
        );
        _likeBool = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(onPressed: _likeThis, icon: _coeur),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 122, 34), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Conan",
                      style: const TextStyle(fontSize: 36),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Image.asset("../assets/images/conan.jpg",width: 300, height: 300, ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Haikyuu",
                      style: const TextStyle(fontSize: 36),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Image.asset("../assets/images/haikyuu.jpg",width: 300,height: 300,),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const SecondPage(),
                  ),
                );
              },
              child: const Text("description"),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conan et Haikyuu : Une quête de passion et de déduction.'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("../assets/images/conan.jpg",width: 200,height: 200,),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "Détective Conan est un manga écrit et dessiné par Gōshō Aoyama. "
                    "La série débute le 5 janvier 1994 avec une première publication dans le magazine hebdomadaire Weekly Shōnen Sunday, et recense 106 tomes commercialisés en octobre 2024 au Japon. "
                    "Shinichi Kudo, un jeune détective prodige, a été rapetissé dans le corps d'un enfant à cause d'un syndicat criminel. "
                    "Prenant alors le nom de Conan Edogawa, il part vivre chez son amie Ran Mouri et travaille pour l'agence de détective de Kogoro. "
                    "Plongez dans les enquêtes fascinantes de Conan, un jeune prodige qui transforme chaque mystère en une aventure captivante.",
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("../assets/images/haikyuu.jpg",width: 250,height: 250,),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Haikyū!! est un manga de Haruichi Furudate, publié de février 2012 à juillet 2020 dans le *Weekly Shōnen Jump* de Shūeisha, et comptant 45 tomes. "
                    "En France, la série a été entièrement éditée par Kazé entre janvier 2014 et juin 2022. Shôyō Hinata, surnommé Shô, est passionné de volley-ball, malgré sa petite taille. "
                    "Après une lourde défaite, son club de collège est dissous, mais il est déterminé à continuer et choisit son lycée en fonction de son ambition sportive. "
                    "Son rêve est de battre le Petit Géant, un joueur légendaire qu'il considère comme sa source d'inspiration et un modèle à atteindre. "
                    "Vivez l'aventure palpitante d'Haikyū, où le rêve de s'envoler prend forme sur le terrain de volleyball, porté par passion et détermination !",
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) => const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 55, 161, 12),
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "55 avis positifs",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
