import 'package:flutter/material.dart';

/*class Prix extends StatefulWidget {
  const Prix({Key? key}) : super(key: key);

  @override
  State<Prix> createState() => _PrixState();
}

class _PrixState extends State<Prix> {
  final prixController = TextEditingController();
  final bagagesController = TextEditingController();
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
                      controller: prixController,
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
                      controller: bagagesController,
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
}*/
