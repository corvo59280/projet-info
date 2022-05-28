import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  contentPadding: EdgeInsets.all(12.0),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.red,
        width: 1.0), // La bordure est rouge si c'est pas valide
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.red,
        width: 1.0), // La bordure est rouge si c'est pas valide
  ),

  // couleur de la bordure de la box quand elle n'est pas utilisée,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.blueGrey,
        width:
            1.0), // couleur de la bordure de la box quand elle n'est pas utilisée
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.blue,
        width: 1.0), //couleur de la bordure de la box quand elle est utilisée
  ),
);
