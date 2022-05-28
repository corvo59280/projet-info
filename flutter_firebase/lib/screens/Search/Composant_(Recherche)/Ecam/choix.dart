import 'package:flutter/material.dart';
import 'package:flutter_firebase/main.dart';
import 'package:flutter_firebase/screens/Search/ECAM.dart';
import 'package:flutter_firebase/screens/Search/VACANCE.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_ECAM.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_Vacance.dart';

class choix extends StatefulWidget {
  const choix({Key? key}) : super(key: key);

  @override
  State<choix> createState() => _choixState();
}

class _choixState extends State<choix> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*Image.asset(
          'images/plan_de_strasbourg.png',
          scale: 1.0,
          fit: BoxFit.cover,
        ),*/
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => VACANCE()),
                );
              },
              child: Icon(
                Icons.beach_access,
                color: Color.fromARGB(255, 28, 70, 97),
                size: 80,
              ),
              /*child: const Text('Vacances',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),*/
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromRadius(80),
                primary: Color.fromARGB(255, 149, 213, 157),
                shape: CircleBorder(side: BorderSide.none),
              ),
            ),
            //espacement entre les 2 box
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ECAM(),
                  ),
                );
              },
              child: Icon(
                Icons.school,
                color: Color.fromARGB(255, 28, 70, 97),
                size: 80,
              ),
              /*child: const Text('Ecam',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),*/
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromRadius(80),
                primary: Color.fromARGB(255, 149, 213, 157),
                shape: CircleBorder(side: BorderSide.none),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 55,
            ),
            Text(
              "En Afterwork",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              "A l'ECAM",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
