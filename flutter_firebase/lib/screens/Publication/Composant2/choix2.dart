import 'package:flutter/material.dart';
import 'package:flutter_firebase/asset/MyFlutterApp.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication_VACANCE.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication_ECAM.dart';

class choix2 extends StatefulWidget {
  const choix2({Key? key}) : super(key: key);

  @override
  State<choix2> createState() => _choix2State();
}

class _choix2State extends State<choix2> {
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
                  MaterialPageRoute(builder: (context) => PagePublication()),
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
                    builder: (context) => PagePublicationECAM(),
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
              width: 70,
            ),
            Text(
              "VACANCE",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 105,
            ),
            Text(
              "ECAM",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
