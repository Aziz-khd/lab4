import 'package:my/screen_1.dart';
import 'package:my/screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.red[200],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    child: Text(
                  "Select your school",
                  style: TextStyle(fontSize: 25),
                )),
                Divider(height: 30),
                ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return One();
                          },
                        ));
                      });
                    }),
                    child: Text(
                      "Fade school",
                      style: TextStyle(fontSize: 25),
                    )),
                Divider(height: 10),
                ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return screen_two();
                          },
                        ));
                      });
                    }),
                    child: Text(
                      "Raze school",
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
          ),
        ));
    ;
  }
}
