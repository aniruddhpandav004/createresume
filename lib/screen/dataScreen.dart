import 'package:flutter/material.dart';

class Myclass extends StatefulWidget {
  const Myclass({Key? key}) : super(key: key);

  @override
  State<Myclass> createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  bool isvisible = false;
  TextEditingController txtname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "RESUME",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )],
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'second');
                      },
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.account_box),
                            Text(
                              "Personal Info",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.menu_book),
                            Text(
                              "Education      ",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.public),
                            Text(
                              "Experience    ",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.shield),
                            Text(
                              "Skill                ",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.tag_sharp),
                            Text(
                              "Objective       ",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.person),
                            Text(
                              "Reference      ",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        "More Sections",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.rocket_launch_sharp),
                            Text(
                              "Projects        ",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
