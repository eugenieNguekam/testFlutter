import 'package:flutter/material.dart';


class Utilisateurs extends StatefulWidget{
  const Utilisateurs({super.key});
  @override
  _UtilisateurState createState()=> _UtilisateurState();
}
class _UtilisateurState extends State<Utilisateurs>{
  final myController = TextEditingController();
  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
  return Scaffold(
  appBar: AppBar(
  title: Text("A propos de l'utilisateur "),
  ),
  body: Padding(
  padding: EdgeInsets.all(16.0),
  ),

  );
  }


  }
