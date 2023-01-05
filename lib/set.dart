// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
     child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _header(context),
            _inputFeild(context),
            _forgotpassword(context),
            _pageup(context),
          ],
        ),
      ),
     ),
    );
  }



  _header(context){
    return Column(
     children: [
      Text("Welcome Back", style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,

        ),
        ),Text("Enter Your Username & Password "),

     ],
    );
  }
  _inputFeild(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "username",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person)
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.lock),
          ),
          obscureText: true,  
        ),SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("login",
        style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16),

        ),
        )
      ],
    );
  }                  
  _forgotpassword(context){
   return TextButton(onPressed: (){}, child: Text("Forgot Password"),);
  }
  _pageup(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dont Have Account"),
        TextButton(onPressed: (){}, child:Text("singup"),)
      ],
    );
  }  
}
