// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Icon _coeur = const Icon(Icons.favorite_border, color: Colors.white,);
  bool _likeBool = false;
   int _selectedIndex = 0;
   String  _affichage = '0 :Acceuil';

  void _likeThis(){
    setState(() {
      if (_likeBool){
        _coeur = const Icon(Icons.favorite_border, color: const Color.fromARGB(255, 240, 234, 234),);
        // ignore: unused_local_variable
        bool _likeBool = false;
      }
      else {
        _coeur = const Icon(Icons.favorite, color: const Color.fromARGB(255, 222, 231, 223),);
        // ignore: unused_local_variable
        bool _likeBool = true;
      }
    });
  }
  void _itemClique(int index){
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex ==0){
          _affichage = '0 : Acceuil';
        }
      else if (_selectedIndex == 1){
           _affichage = '1 : mon compte';
      }
      else {
           _affichage = '2 : parametres';
      }
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(onPressed: _likeThis, icon: _coeur)
        ],
        backgroundColor: Colors.red,
        ),

        drawer: Drawer(
           child: ListView(
             padding: EdgeInsets.zero,
              children: <Widget>[
                 const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Header du Drawer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Accueil'),
        onTap: () {
          // Action à effectuer lors du clic
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Compte'),
        onTap: () {
          // Action à effectuer lors du clic
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Paramètres'),
        onTap: () {
          // Action à effectuer lors du clic
        },
      ),
    ],
  ),
),
                
          body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset("../assets/images/nador.jpeg", width: 220, height: 210,),
              Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b0/Image_du_Maroc_.jpg", width: 220, height: 190,),
              Image.network("https://thumbs.dreamstime.com/b/la-m%C3%A9dina-de-chefchaouen-maroc-50530449.jpg", width: 230, height: 190,),
              Text(_affichage),
              
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 34, 54, 235),
          onPressed:(){},
          child: const Icon(Icons.abc, color: Color.fromARGB(255, 255, 255, 255), size:20),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'mon compte',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'parametres',
              ),
            
          ],
               onTap: _itemClique,
          currentIndex: _selectedIndex,
        ),
            
    );
  }
}

