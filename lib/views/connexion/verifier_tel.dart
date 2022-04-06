import 'package:flutter/material.dart';

import '../principales/accueil.dart';

class VerifierTel extends StatefulWidget {
  const VerifierTel({Key? key}) : super(key: key);

  @override
  _VerifierTelState createState() => _VerifierTelState();
}

class _VerifierTelState extends State<VerifierTel> {
  TextEditingController pays = TextEditingController();
  TextEditingController tel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Vérifier votre n° de téléphone",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                      "Whatsapp devra vérifier votre numéro de téléphone",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      controller: pays,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "Votre pays",
                          iconColor: Colors.white,
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 3)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 3))),
                    )
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: tel,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Votre numéro de téléphone",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 3)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 3))),
                    ))
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) {
                                if(pays.text.isNotEmpty && tel.text.isNotEmpty){
                                  return const Accueil();
                                }
                                else{
                                  return Container(
                                    child: const Text("pays ou numéro non renseigné"),
                                  );
                                }
                              }
                          )
                      );
                    },
                    child: const Text("SUIVANT", style:TextStyle(color: Colors.black, fontSize: 25),),

                  ),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20)),
                      color: Colors.green
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                  "Vous devez etre agé(e) d'au moins 16 ans pour vous enregistrer. Apprenez plus sur le fonctionnement de whatsapp avec les entités facebook",
                  style: TextStyle(color: Colors.white
                  ),
                )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
