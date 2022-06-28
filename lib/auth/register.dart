import 'package:flutter/material.dart';
import 'package:loginform/crud/userpage.dart';

class Inscription extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          padding:EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Creer un compte',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                ),
                SizedBox(height:25.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,
                    color: Colors.blue),
                    labelText: "Nom",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:12.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box,
                          color: Colors.blue),
                      labelText: "Prenom",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:12.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail,
                          color: Colors.blue),
                      labelText: "Email",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:12.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,
                          color: Colors.blue),
                      labelText: "Mot de passe",
                      border: OutlineInputBorder()
                  ),
                  obscureText: true,
                ),
                SizedBox(height:12.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,
                          color: Colors.blue),
                      labelText: "Confirmez Mot de passe",
                      border: OutlineInputBorder()
                  ),
                  obscureText: true,
                ),
                SizedBox(height:22.0),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Utilisateurs()),
                    );
                  },
                  color: Colors.greenAccent,
                  child: Text("S'inscrire"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                SizedBox(height:18.0),
                OutlinedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Avez-vous deja un compte?Connectez-vous.",
                  style: TextStyle(fontStyle: FontStyle.italic,
                  color: Colors.lightBlue),),
                ),

              ],
            ),
          )
        ),
      ),
    );
  }
}