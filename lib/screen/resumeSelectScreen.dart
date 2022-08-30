import 'package:createresume/class/modelClass.dart';
import 'package:createresume/ufils/pdfGen.dart';
import 'package:flutter/material.dart';

class ResumeSelectScreen extends StatefulWidget {
  const ResumeSelectScreen({Key? key}) : super(key: key);

  @override
  State<ResumeSelectScreen> createState() => _ResumeSelectScreenState();
}

class _ResumeSelectScreenState extends State<ResumeSelectScreen> {
  @override
  Widget build(BuildContext context) {
    ModelClass m1 = ModalRoute.of(context)!.settings.arguments as ModelClass;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("RESUME MAKER"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              pdfgen(m1);
            }, icon: Icon(Icons.download),)],
        ),
        body: Column(
          children: [
            Text(m1.firstname!),
            Text(m1.lastname!),
            Text(m1.email!),
            Text(m1.number!),
            Text(m1.qa!),
            Text(m1.exp!),
          ],
        ),
      ),
    );
  }
}
