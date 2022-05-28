import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'marche fdp',
      home: homepage2(),
    );
  }
}

class homepage2 extends StatelessWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 221, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 148, 117), //c //couleur appBar
        centerTitle: true,
        toolbarHeight: 90.0, //épaisseur de l'appbar
        elevation: 0.0,
        title: const Text('Annonce ECAM',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
      body: Liste_ECAM(),
    );
  }
}

class Liste_ECAM extends StatefulWidget {
  @override
  _Liste_ECAMState createState() => _Liste_ECAMState();
}

class _Liste_ECAMState extends State<Liste_ECAM> {
  final Stream<QuerySnapshot> _userStream =
      FirebaseFirestore.instance.collection('annonce_ecam').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _userStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
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
                height: 150,
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Icon(
                      Icons.school,
                      color: Color.fromARGB(255, 28, 70, 97),
                      size: 60,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Column(
                      children: [
                        Text('Depart prévu :'),
                        Text('Vers :'),
                        Text('Date :'),
                        Text('Place :'),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Column(
                      children: [
                        Text(data['arrivé']),
                        Text(data['depart']),
                        Text(data['date']),
                        Text(data['persone']),
                        Text(data['prix']),
                        /*Text(data['description']),*/
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                ]),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
