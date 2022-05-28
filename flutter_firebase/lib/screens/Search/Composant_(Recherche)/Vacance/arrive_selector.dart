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
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
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
              Expanded(
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
                      hintText: 'Ecam Strasbourg',
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
