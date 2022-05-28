import 'package:flutter/material.dart';

class ArriveSelector extends StatefulWidget {
  const ArriveSelector({Key? key}) : super(key: key);

  @override
  State<ArriveSelector> createState() => _ArriveSelectorState();
}

class _ArriveSelectorState extends State<ArriveSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //espacement de la boxe par rapport à tous les côtés
      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
      child: Column(
        children: [
          //Mettre le texte au-dessus de la case
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //faire l'espacement du texte par rapport au bord gauche de la page
              padding: EdgeInsets.only(left: 10),
              child: Text('Arrivée',
                  style: TextStyle(
                      color: Color.fromARGB(255, 28, 70, 97),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 235, 214),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Entre ton lieu d'arrivée",
                      contentPadding: EdgeInsets.all(
                          10), //espacement de l'écriture dans la case
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: const [],
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Icon(
                  Icons.flag,
                  color: Color.fromARGB(255, 28, 70, 97),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
