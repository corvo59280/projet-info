import 'package:flutter/material.dart';

class bouton extends StatefulWidget {
  const bouton({Key? key}) : super(key: key);

  @override
  State<bouton> createState() => _boutonState();
}

class _boutonState extends State<bouton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  //faire l'espacement du texte par rapport au bord gauche de la page
                  padding: EdgeInsets.only(left: 35),
                  child: Text('Date',
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 70, 97),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Align(
                child: Container(
                  //faire l'espacement du texte par rapport au texte "Date"
                  padding: EdgeInsets.only(left: 160),
                  child: Text('Nombre de places',
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 70, 97),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Container(
            // hauteur de la box
            height: 45,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 235, 214),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            offset: Offset(4, 4),
                          ),
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '7h00',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                //espacement entre les 2 boxs
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 235, 214),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            offset: Offset(4, 4),
                          ),
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '1',
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
