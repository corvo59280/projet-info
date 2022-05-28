import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*class Validation2 extends StatefulWidget {
  const Validation2({Key? key}) : super(key: key);
  @override
  State<Validation2> createState() => _Validation2State();
}

class _Validation2State extends State<Validation2> {
  final arriveController = TextEditingController();
  final departController = TextEditingController();
  final heureController = TextEditingController();
  final personneController = TextEditingController();
  final prixController = TextEditingController();
  final bagagesController = TextEditingController();
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
                      FirebaseFirestore.instance.collection('users').add({
                        'name': departController.value.text,
                        'first_name': arriveController.value.text,
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Publier',
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
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
}*/
