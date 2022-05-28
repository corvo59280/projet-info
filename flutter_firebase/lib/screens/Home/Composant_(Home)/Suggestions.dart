import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35),
            color: Color.fromARGB(255, 229, 221, 216),
            height: 50,
            child: Row(
              children: [
                Text(
                  'On te propose aussi :',
                  style: TextStyle(
                      color: Color.fromARGB(255, 28, 70, 97),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 28, 70, 97),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 2,
            width: 320,
          ),
          //Espace entre le texte et la première box de suggestion
          SizedBox(
            height: 10,
          ),

//================PREMIERE BOX==============
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 214),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ]),
            height: 115,
            child: Row(children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Icon(
                  Icons.beach_access,
                  color: Color.fromARGB(255, 28, 70, 97),
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Vers le 3 avenue de Londres \nDépat prévu à 18h03 à l'ECAM \nConducteur : Bilal le pilote \nPrix : 50€ \nDescription : Baisse ta culotte c'est Bibi qui pilote, \nLes temps sont durs donc rale pas sur le prix",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          //Espace entre les deux boxs
          SizedBox(
            height: 20,
          ),

//================DEUXIEME BOX==============
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 214),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ]),
            height: 115,
            child: Row(children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 15, 15, 15),
                child: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 28, 70, 97),
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Vers l'ECAM \nDépat prévu à 8h03 à la gare \nConducteur : Rodolphe le chauffeur \nPrix : 5€ \nDescription : Bonjour cher camarade Ecamien, \nici votre chauffeur Rolfi qui vous propose \nde vous emmener à l'ECAM pour cette \nbelle journée",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          //Espace entre les deux boxs
          SizedBox(
            height: 20,
          ),

//================TROISIEME BOX==============
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 214),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ]),
            height: 115,
            child: Row(children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Icon(
                  Icons.beach_access,
                  color: Color.fromARGB(255, 28, 70, 97),
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Vers le 3 avenue de Londres \nDépat prévu à 18h03 à l'ECAM \nConducteur : Bilal le pilote \nPrix : 50€ \nDescription : Baisse ta culotte c'est Bibi qui pilote, \nLes temps sont durs donc rale pas sur le prix",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          //Espace entre les deux boxs
          SizedBox(
            height: 20,
          ),

//================QUATRIEME BOX==============
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 214),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ]),
            height: 115,
            child: Row(children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Icon(
                  Icons.beach_access,
                  color: Color.fromARGB(255, 28, 70, 97),
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Vers le 3 avenue de Londres \nDépat prévu à 18h03 à l'ECAM \nConducteur : Bilal le pilote \nPrix : 50€ \nDescription : Baisse ta culotte c'est Bibi qui pilote, \nLes temps sont durs donc rale pas sur le prix",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          //Espace entre les deux boxs
          SizedBox(
            height: 20,
          ),

//================CINQUIEME BOX==============
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 214),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ]),
            height: 115,
            child: Row(children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Icon(
                  Icons.beach_access,
                  color: Color.fromARGB(255, 28, 70, 97),
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Vers le 3 avenue de Londres \nDépat prévu à 18h03 à l'ECAM \nConducteur : Bilal le pilote \nPrix : 50€ \nDescription : Baisse ta culotte c'est Bibi qui pilote, \nLes temps sont durs donc rale pas sur le prix",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          //Espace entre les deux boxs
          SizedBox(
            height: 20,
          ),

//================SIXIEME BOX==============
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 214),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ]),
            height: 115,
            child: Row(children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Icon(
                  Icons.beach_access,
                  color: Color.fromARGB(255, 28, 70, 97),
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Vers le 3 avenue de Londres \nDépat prévu à 18h03 à l'ECAM \nConducteur : Bilal le pilote \nPrix : 50€ \nDescription : Baisse ta culotte c'est Bibi qui pilote, \nLes temps sont durs donc rale pas sur le prix",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          //Espace entre les deux boxs
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
