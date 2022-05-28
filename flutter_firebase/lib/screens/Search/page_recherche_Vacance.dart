import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/Validation.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/arrive_selector.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/Heure-Personnes.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/choix.dart';
import 'package:flutter_firebase/screens/Search/Composant_(Recherche)/Vacance/depart_selector.dart';
import 'package:flutter_firebase/services/authentication.dart';

class PageRechercheVacance extends StatefulWidget {
  const PageRechercheVacance({Key? key}) : super(key: key);

  @override
  State<PageRechercheVacance> createState() => _PageRechercheVacanceState();
}

class _PageRechercheVacanceState extends State<PageRechercheVacance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey, //couleur appBar
        centerTitle: true,
        toolbarHeight: 70.0, //épaisseur de l'appbar
        elevation: 0.0,
        title: const Text('Recherche',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            choix(),
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
