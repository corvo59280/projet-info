import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class PagePublication extends StatefulWidget {
  const PagePublication({Key? key}) : super(key: key);

  @override
  State<PagePublication> createState() => _PagePublicationState();
}

class _PagePublicationState extends State<PagePublication> {
  final TextEditingController arriveeController = TextEditingController();
  final TextEditingController departeController = TextEditingController();
  final TextEditingController dateeController = TextEditingController();
  final TextEditingController personneeController = TextEditingController();
  final TextEditingController prixeController = TextEditingController();
  final TextEditingController descriptioneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 252, 211), //couleur appBar
        flexibleSpace: Image(
          image: AssetImage('images/haut_de_publier.png'),
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        toolbarHeight: 240, //épaisseur de l'appbar
        elevation: 0.0,
        // Le texte "ajouter un trajet est inscrit dans l'image faite sur Canva"
        title: const Text('Publier',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
      body: new NestedScrollView(
        //controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              flexibleSpace: Image(
                image: AssetImage('images/haut_de_publier.png'),
                fit: BoxFit.cover,
              ),
              pinned: true,
              floating: false,
              forceElevated: innerBoxIsScrolled,
              toolbarHeight: 240,
            ),
          ];
        },*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            PresentationPix(),
            DepartSelector2(
              departController: departeController,
            ),
            ArriveSelector2(
              arriveController: arriveeController,
            ),
            bouton2(
              dateController: dateeController,
              personneController: personneeController,
            ),
            Prix(
              prixController: prixeController,
            ),
            Description(
              descriptionControlleur: descriptioneController,
            ),
            Validation2(
              arriveController: arriveeController,
              departController: departeController,
              dateController: dateeController,
              personneController: personneeController,
              prixController: prixeController,
              descriptionControlleur: descriptioneController,
            ),
          ],
        ),
      ),
    );
  }
}

//______________________________Imaee de la page__________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________

class PresentationPix extends StatefulWidget {
  const PresentationPix({Key? key}) : super(key: key);

  @override
  State<PresentationPix> createState() => _PresentationPixState();
}

class _PresentationPixState extends State<PresentationPix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            //insertion du logo
            'images/haut_de_publier.png',
            width: 400,
            height: 270,
            fit: BoxFit.cover,
          ),
          Text(
            "Ajoute ton trajet bg",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 28, 70, 97),
            ),
          ),
        ],
      ),
    );
  }
}

//_______________________________depart selector___________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
class DepartSelector2 extends StatefulWidget {
  const DepartSelector2({Key? key, required this.departController})
      : super(key: key);
  final TextEditingController departController;
  @override
  State<DepartSelector2> createState() => _DepartSelector2State();
}

class _DepartSelector2State extends State<DepartSelector2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //espacement de la boxe par rapport à tous les côtés
      padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
      child: Column(
        children: [
          SizedBox(
            height: 0,
          ),
          //Mettre le texte au-dessus de la case
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //faire l'espacement du texte par rapport au bord gauche de la page
              padding: EdgeInsets.only(left: 10),
              child: Text('Départ',
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
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 235, 214),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ]),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Entre ton lieu de départ",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                    controller: widget.departController,
                  ),
                ),
              ),
              const SizedBox(
                width: 0,
              ),
              Container(
                height: 50,
                width: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(25)),
                ),
                child: const Icon(
                  Icons.time_to_leave,
                  color: Color.fromARGB(255, 28, 70, 97),
                ),
              ),
            ],
          ),
          //espace entre cette case et celle d'en dessous
          const SizedBox(
            height: 0,
          ),
        ],
      ),
    );
  }
}

//________________________arrive selector___________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
class ArriveSelector2 extends StatefulWidget {
  const ArriveSelector2({Key? key, required this.arriveController})
      : super(key: key);
  final TextEditingController arriveController;
  @override
  State<ArriveSelector2> createState() => _ArriveSelector2State();
}

class _ArriveSelector2State extends State<ArriveSelector2> {
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
                    controller: widget.arriveController,
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

//_______________________heure personne____________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
class bouton2 extends StatefulWidget {
  const bouton2(
      {Key? key,
      required this.dateController,
      required this.personneController})
      : super(key: key);
  final TextEditingController dateController;
  final TextEditingController personneController;
  @override
  State<bouton2> createState() => _bouton2State();
}

class _bouton2State extends State<bouton2> {
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
                        hintText: '01/01/2022',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                      controller: widget.dateController,
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
                      controller: widget.personneController,
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

//_______________________prix bagages______________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
class Prix extends StatefulWidget {
  const Prix({
    Key? key,
    required this.prixController,
  }) : super(key: key);
  final TextEditingController prixController;

  @override
  State<Prix> createState() => _PrixState();
}

class _PrixState extends State<Prix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //espacement de la boxe par rapport à tous les côtés
      padding: const EdgeInsets.fromLTRB(40, 15, 10, 10),
      child: Column(
        children: [
          SizedBox(
            height: 0,
          ),
          //Mettre le texte au-dessus de la case
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //faire l'espacement du texte par rapport au bord gauche de la page
              padding: EdgeInsets.only(left: 10),
              child: Text('Prix',
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
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 235, 214),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ]),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Parlons mala",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                    controller: widget.prixController,
                  ),
                ),
              ),
              const SizedBox(
                width: 0,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(25)),
                ),
                child: const Icon(
                  Icons.euro_rounded,
                  color: Color.fromARGB(255, 28, 70, 97),
                ),
              ),
            ],
          ),
          //espace entre cette case et celle d'en dessous
          const SizedBox(
            height: 0,
          ),
        ],
      ),
    );
  }
}

//_____________________description__________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________

class Description extends StatefulWidget {
  const Description({Key? key, required this.descriptionControlleur})
      : super(key: key);
  final TextEditingController descriptionControlleur;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //espacement de la boxe par rapport à tous les côtés
      padding: const EdgeInsets.fromLTRB(20, 15, 0, 10),
      child: Column(
        children: [
          SizedBox(
            height: 0,
          ),
          //Mettre le texte au-dessus de la case
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //faire l'espacement du texte par rapport au bord gauche de la page
              padding: EdgeInsets.only(left: 10),
              child: Text('Description',
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
                  height: 200,
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 235, 214),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ]),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Si tu veux ajouter des infos.",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                    controller: widget.descriptionControlleur,
                  ),
                ),
              ),
              //Espace par rapport à la droite
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          //espace entre cette case et celle d'en dessous
          const SizedBox(
            height: 0,
          ),
        ],
      ),
    );
  }
}

//_____________________publier______________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
//__________________________________________________________________________________
class Validation2 extends StatefulWidget {
  const Validation2({
    Key? key,
    required this.arriveController,
    required this.departController,
    required this.dateController,
    required this.personneController,
    required this.prixController,
    required this.descriptionControlleur,
  }) : super(key: key);

  final TextEditingController arriveController;
  final TextEditingController departController;
  final TextEditingController dateController;
  final TextEditingController personneController;
  final TextEditingController prixController;
  final TextEditingController descriptionControlleur;

  @override
  State<Validation2> createState() => _Validation2State();
}

class _Validation2State extends State<Validation2> {
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
                      Navigator.pop(context);
                      FirebaseFirestore.instance.collection('annonce').add({
                        'depart': widget.departController.value.text,
                        'arrivé': widget.arriveController.value.text,
                        'date': widget.dateController.value.text,
                        'persone': widget.personneController.value.text,
                        'prix': widget.prixController.value.text,
                        'description': widget.descriptionControlleur.value.text,
                      });
                    },
                    child: Text(
                      'Publier',
                      style: TextStyle(
                        color: Color.fromARGB(255, 28, 70, 97),
                        fontSize: 24,
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
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
