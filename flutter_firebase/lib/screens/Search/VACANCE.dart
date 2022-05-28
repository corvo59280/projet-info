import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/Validation.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/arrive_selector.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/Heure-Personnes.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/choix.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/depart_selector.dart';
import 'package:flutter_firebase/services/authentication.dart';

class VACANCE extends StatefulWidget {
  const VACANCE({Key? key}) : super(key: key);

  @override
  State<VACANCE> createState() => _VACANCEState();
}

class _VACANCEState extends State<VACANCE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 221, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 148, 117), //c //couleur appBar
        centerTitle: true,
        toolbarHeight: 70.0, //épaisseur de l'appbar
        elevation: 0.0,
        title: const Text('Trajet Vacances',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            DepartSelector(),
            ArriveSelector(),
            bouton(),
            Validation(),
          ],
        ),
      ),
    );
  }
}
