import 'package:flutter/material.dart';

class DepartSelector extends StatefulWidget {
  const DepartSelector({Key? key}) : super(key: key);
  @override
  State<DepartSelector> createState() => _DepartSelectorState();
}

class _DepartSelectorState extends State<DepartSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
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
                  child: const TextField(
                    decoration: const InputDecoration(
                      hintText: 'Lieu de départ',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(25)),
                ),
                child: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 28, 70, 97),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
