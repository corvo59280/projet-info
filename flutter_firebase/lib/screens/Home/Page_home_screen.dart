import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Home/Composant_(Home)/Recherche_ECAM.dart';
import 'package:flutter_firebase/screens/Home/Composant_(Home)/Suggestions.dart';
import 'package:flutter_firebase/screens/Home/Composant_(Home)/Tes_voyages.dart';
import 'package:flutter_firebase/services/authentication.dart';

class Pagehomescreen extends StatelessWidget {
  //final AuthenticationService _auth = AuthenticationService();

  Pagehomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 221, 216),
      /*appBar: AppBar(
        backgroundColor: Colors.blueGrey, //couleur appBar
        centerTitle: true,
        toolbarHeight: 70.0, //épaisseur de l'appbar
        elevation: 8.0,
        title: const Text('Hello students',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            Recherche_ECAM(),
            Tes_Voyages(),
            Suggestions(),
          ],
        ),
      ),
    );
  }
}
