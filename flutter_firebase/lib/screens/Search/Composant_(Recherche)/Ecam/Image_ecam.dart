import 'package:flutter/material.dart';

class ImageEcam extends StatefulWidget {
  const ImageEcam({Key? key}) : super(key: key);
  @override
  State<ImageEcam> createState() => _ImageEcamState();
}

class _ImageEcamState extends State<ImageEcam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //espacement de la boxe par rapport à tous les côtés
      child: Column(
        children: [
          Image.asset(
            //insertion du logo
            'images/rond_de_lecam.png',
            scale: 0.8,
          ),
        ],
      ),
    );
  }
}
