import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Navigation/Principale_Naviguation.dart';
import 'package:flutter_firebase/screens/Search/ECAM.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_ECAM.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_Vacance.dart';

class Recherche_ECAM extends StatefulWidget {
  const Recherche_ECAM({Key? key}) : super(key: key);

  @override
  State<Recherche_ECAM> createState() => _Recherche_ECAMState();
}

class _Recherche_ECAMState extends State<Recherche_ECAM> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 57, 148, 117),
      padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: Column(
        children: [
          Row(
            //Barre recherche + bouton
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 235, 214),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Je te récup ou ?',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(1, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ECAM(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 28, 70, 97),
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: Color.fromARGB(255, 201, 219, 193),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
