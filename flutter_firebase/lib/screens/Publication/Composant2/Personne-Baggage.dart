import 'package:flutter/material.dart';

/*class Personne_Baggage extends StatefulWidget {
  const Personne_Baggage({Key? key}) : super(key: key);

  @override
  State<Personne_Baggage> createState() => _Personne_BaggageState();
}

class _Personne_BaggageState extends State<Personne_Baggage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Prix',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(1, 1),
                          )
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '€',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Bagages',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(1, 1),
                          )
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Oui/Non',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

import '../../Liste_annonce/VACANCE.dart';
import '../Page_Publication_VACANCE.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 20,
          ),
          Container(
            height: 50,
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
                      'List',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
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
