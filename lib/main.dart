import 'package:flutter/material.dart';
import 'package:loginform/auth/login.dart';
import 'package:loginform/main.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Connexion(),
    );
  }
}

class Utilisateur extends StatefulWidget{
  const Utilisateur({super.key});

  @override
  _UtilisateurState createState()=> _UtilisateurState();
}
class _UtilisateurState extends State<Utilisateur>{
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
         child: TextField(
           controller: myController,
         ),
       ),
       floatingActionButton:
       FloatingActionButton(
         onPressed: (){
           showDialog(
               context: context,
               builder: (context){
                 return AlertDialog(
                   content: Text(myController.text),
                 );
               });
         },
       ),
     );
   }
}
