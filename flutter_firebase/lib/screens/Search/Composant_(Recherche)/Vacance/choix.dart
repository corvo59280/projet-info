import 'package:flutter/material.dart';
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
        Row(
          children: [
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              width: 60,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PageRechercheVacance(),
                  ),
                );
              },
              child: const Text('Vacance'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            const SizedBox(
              width: 125,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PageRechercheEcam(),
                  ),
                );
              },
              child: const Text('Ecam'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            )
          ],
        ),
      ],
    );
  }
}
