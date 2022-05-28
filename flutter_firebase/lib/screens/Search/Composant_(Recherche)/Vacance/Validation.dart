import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Liste_annonce/VACANCE.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 20,
          ),
          Container(
            height: 150,
            child: Row(
              children: [
                SizedBox(
                  width: 125,
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => test1(),
                        ),
                      );
                    },
                    child: Text(
                      'Rechercher',
                      style: TextStyle(
                        color: Color.fromARGB(255, 28, 70, 97),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 149, 213, 157),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
