import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/Image_ecam.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/Validation.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/arrive_selector.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/Heure-Personnes.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/choix.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/Validation.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Ecam/depart_selector.dart';
import 'package:flutter_firebase/services/authentication.dart';

class ECAM extends StatefulWidget {
  const ECAM({Key? key}) : super(key: key);

  @override
  State<ECAM> createState() => _ECAMState();
}

class _ECAMState extends State<ECAM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 221, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 148, 117), //c //couleur appBar
        centerTitle: true,
        toolbarHeight: 90.0, //épaisseur de l'appbar
        elevation: 0.0,
        title: const Text('Trajet ECAM',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ImageEcam(),
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
