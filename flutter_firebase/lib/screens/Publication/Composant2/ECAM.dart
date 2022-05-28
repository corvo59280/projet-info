import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication2.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication_ECAM.dart';

class ECAM extends StatefulWidget {
  const ECAM({Key? key}) : super(key: key);

  @override
  State<ECAM> createState() => _ECAMState();
}

class _ECAMState extends State<ECAM> {
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
                          builder: (context) => PagePublicationECAM(),
                        ),
                      );
                    },
                    child: Text(
                      'ECAM',
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
