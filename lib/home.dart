import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});



  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  // final fire_store = FirebaseFirestore;
  // final fireauth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();


  final namectr = TextEditingController();
  final emailctr = TextEditingController();
  final passwordctr = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(backgroundColor: Colors.transparent,
        appBar:AppBar(backgroundColor: Colors.transparent,
          title: Text("money"),
        ),
        body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(""))),
          padding:EdgeInsets.all(40),
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Text("signUp",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight:FontWeight.bold,
                    ),),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(

                    controller: namectr,
                    decoration: InputDecoration(
                        labelText: "  Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),

                  ),



                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: emailctr,
                    decoration: InputDecoration(
                        labelText: "  Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),

                  ),



                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: passwordctr,
                    decoration: InputDecoration(
                        labelText: "  password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),

                  ),


                  SizedBox(
                    height: 20,
                  ),


                  ElevatedButton(onPressed:(){}, child:Text("sign Up",
                    style:TextStyle(
                        fontWeight:FontWeight.w800,




                    ),
                  ))





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}