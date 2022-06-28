import 'package:flutter/material.dart';
import 'package:loginform/auth/register.dart';
import 'package:loginform/crud/userpage.dart';

class Connexion extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                const Center(
                  child: Text('Connectez_vous!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                SizedBox(height:25.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail,
                          color: Colors.blue),
                      labelText: "Email",
                      border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    if (value.isEmpty ||
                        !RegExp(
                            r"^[a-zA-Z0-9a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      print('Entrer une adresse email valide');
                    }
                    return null;
                  },
                    ),
               SizedBox(height:25.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,
                          color: Colors.blue),
                      labelText: "Mot de passe",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:22.0, width: 500.0,),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Utilisateurs()),
                    );
                  },
                  color: Colors.greenAccent,
                  child: Text("Se connecter"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                SizedBox(height:18.0),
                OutlinedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Inscription()),
                    );
                  },
                  child: Text("Voulez-vous creer un compte?Cliquez-ici",
                  style: TextStyle(fontStyle: FontStyle.italic,
                  color: Colors.lightBlue)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}