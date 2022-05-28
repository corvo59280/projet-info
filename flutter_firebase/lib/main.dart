import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Navigation/Principale_Naviguation.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication_VACANCE.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_Vacance.dart';
import 'package:flutter_firebase/screens/screens.authenticate/authenticate_screen.dart';
import 'package:flutter_firebase/screens/splashscreen_wrapper.dart';
import 'package:flutter_firebase/services/authentication.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*StreamProvider<AppUser?>.value(
      value: AuthenticationService().user,
      initialData: null,
      child:*/
        MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principale(), // Le screen sur lequel tu travailles tu le mets la
      theme: ThemeData(
        primarySwatch: Colors
            .blueGrey, // Couleur bouton validation sur la page de connexion
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //),
    );
  }
}
