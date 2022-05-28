/*import 'package:flutter/material.dart';

class ArriveSelector2 extends StatefulWidget {
  const ArriveSelector2({Key? key}) : super(key: key);

  @override
  State<ArriveSelector2> createState() => _ArriveSelector2State();
}

class _ArriveSelector2State extends State<ArriveSelector2> {
  final arriveController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ou vas tu ?",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                    controller: arriveController,
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
                  color: Colors.black,
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
}*/
