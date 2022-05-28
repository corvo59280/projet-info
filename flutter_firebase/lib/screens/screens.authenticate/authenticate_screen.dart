/*import 'package:flutter/material.dart';
import 'package:flutter_firebase/common/constants.dart';
import 'package:flutter_firebase/services/authentication.dart';
import '../../common/loading.dart';

class AuthenticateScreen extends StatefulWidget {
  @override
  _AuthenticateScreenState createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  final AuthenticationService _auth = AuthenticationService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false ;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView(){
    setState((){
      _formKey.currentState?.reset();
      error = '';
      emailController.text = '';
      passwordController.text = '';
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Loading();
    } else {
      return Scaffold(
      backgroundColor: Colors.grey, //couleur corps de la page
      appBar: AppBar(
        backgroundColor: Colors.grey, //couleur appBar
        toolbarHeight: 70.0, //épaisseur de l'appbar
        elevation: 0.0,
        title: Text(showSignIn
        ? "Sign in to ECAM'OBILITY" // condition titre dans l'app bar
        : "Register to ECAM'OBILITY"), // idem
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(
              Icons.person, //icone haut de page
              color: Colors.white, //couleur de l'icone
              ),
            label: Text(showSignIn ? 'Register' : 'Sign in', // texte sous l'icone
              style: TextStyle(color: Colors.white)),
            onPressed: () => toggleView(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 45.0, horizontal: 30.0),
        child: Form(
          key:_formKey,
          child: ListView( //permettre de scroller (écran infini)
            children: [
              Image.asset(  //insertion du logo
                'images/ECAMOBILITY_transparent.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              TextFormField(
                controller: emailController,
                decoration: 
                  textInputDecoration.copyWith(hintText: "Enter your ECAM's email"), //Faire les bordures de la box de saisie (réf à lib\common\constants.dart)
                  
                validator: (String? value) {                        
                  if (value!.isEmpty) {
                    return "Enter an email";
                  }
                  return null;
                }
              ),
              SizedBox(height: 10.0), //taille de la box de saisie
              TextFormField(
                controller: passwordController,
                decoration: textInputDecoration.copyWith(hintText: "Enter your password"), //Faire les bordures de la box de saisie (réf à lib\common\constants.dart)
                obscureText: true, //cacher le mot de passe
                validator: (String? value) {                        
                  if (value!.length < 6) { //longueur mini du mot de passe
                    return "Enter a password with at least 6 characters";
                  }
                  return null;
                }
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                child: Text(
                  showSignIn ? "Sign In" : "Register",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() => loading = true);
                    var password = passwordController.value.text;
                    var email = emailController.value.text;

                  
                    dynamic result = showSignIn
                    ? await _auth.signInWithEmailAndPassword(email, password)
                    : await _auth.registerWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() {
                        loading = false;
                        error = "Please supply your ECAM email";
                      });
                    }
                  }
                },
              ),
              SizedBox(height: 10.0),
              Text(
                error,
                style: TextStyle(color: Colors.red),
              )
            ]
          ),
        )
      )
    );
    }
  }
}*/
