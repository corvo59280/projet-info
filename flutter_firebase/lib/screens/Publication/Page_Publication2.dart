import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Publication/Composant2/VACANCE.dart';
import 'package:flutter_firebase/screens/Publication/Composant2/ECAM.dart';
import 'package:flutter_firebase/screens/Publication/Composant2/choix2.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/choix.dart';

class Publication2 extends StatefulWidget {
  const Publication2({Key? key}) : super(key: key);

  @override
  State<Publication2> createState() => _Publication2State();
}

class _Publication2State extends State<Publication2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 221, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 148, 117), //couleur appBar
        centerTitle: true,
        toolbarHeight: 101.0, //épaisseur de l'appbar
        elevation: 0.0,
        title: const Text('Publier',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            choix2(),
          ],
        ),
      ),
    );
  }
}
