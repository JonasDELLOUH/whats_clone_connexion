import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },),
      ),
    );
  }
}
