import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication_VACANCE.dart';

/*class Prix_Heure extends StatefulWidget {
  const Prix_Heure({Key? key}) : super(key: key);

  @override
  State<Prix_Heure> createState() => _Prix_HeureState();
}

class _Prix_HeureState extends State<Prix_Heure> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          SizedBox(
            height: 175,
          ),
          Container(
            height: 100,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Heure',
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
                        hintText: '7h00',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Personnes',
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
*/

class VACANCE extends StatefulWidget {
  const VACANCE({Key? key}) : super(key: key);

  @override
  State<VACANCE> createState() => _VACANCEState();
}

class _VACANCEState extends State<VACANCE> {
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PagePublication(),
                        ),
                      );
                    },
                    child: Text(
                      'VACANCE',
                    ),
                    style: ElevatedButton.styleFrom(
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
}
