import 'dart:io';
import 'package:createresume/class/modelClass.dart';
import 'package:flutter/material.dart';

class Personlinformation extends StatefulWidget {
  const Personlinformation({Key? key}) : super(key: key);

  @override
  State<Personlinformation> createState() => _PersonlinformationState();
}

class _PersonlinformationState extends State<Personlinformation> {


  TextEditingController txtfirstname = TextEditingController();
  TextEditingController txtlastname = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtnumber = TextEditingController();
  TextEditingController txtQulification = TextEditingController();
  TextEditingController txtExperirnce = TextEditingController();

  File path = File("");


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Personal information",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("First Name : ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: txtfirstname,
                  decoration: InputDecoration(
                    label: Text("Enter First Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Last Name : ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: txtlastname,
                  decoration: InputDecoration(
                    label: Text("Enter Last Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email : ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: txtemail,
                  decoration: InputDecoration(
                    label: Text("Enter Email"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Mobile Number : ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txtnumber,
                  decoration: InputDecoration(
                    label: Text("Enter Mobile Number"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Qulification : ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: txtQulification,
                  decoration: InputDecoration(
                    label: Text("Enter Qulification"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Experirnce Year : ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txtExperirnce,
                  decoration: InputDecoration(
                    label: Text("Enter Experirnce Year"),
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 60),

                ElevatedButton(onPressed: (){
                  String firstname = txtfirstname.text;
                  String lastname = txtlastname.text;
                  String email = txtemail.text;
                  String number = txtnumber.text;
                  String qa = txtQulification.text;
                  String exp = txtExperirnce.text;


                  ModelClass m1 = ModelClass(firstname: firstname,lastname: lastname,email: email,number: number,qa: qa,exp: exp);
                 Navigator.pushNamed(context, 'resumeselextscreen');
                }, child: Text("NEXT")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
