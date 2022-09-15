import 'package:flutter/material.dart';
import 'package:my/main.dart';

void main() {}

class screen_two extends StatefulWidget {
  const screen_two({super.key});

  @override
  State<screen_two> createState() => _screen_twoState();
}

class _screen_twoState extends State<screen_two> {
  bool course = false;
  bool b = false;
  bool d = false;
  List myOp = ["ahmad", "aziz", "mourad"];
  String def = "aziz";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green[200],
        child: Center(
          child: Column(children: [
            Text(
              "How tall are you",
              style: TextStyle(fontSize: 25, color: Colors.indigo[900]),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.person),
              title: Text("1.70"),
              subtitle: Text("tall"),
              value: course,
              onChanged: ((value) {
                setState(() {
                  course = value!;
                });
              }),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.person),
              title: Text("1.80"),
              subtitle: Text("tall"),
              value: b,
              onChanged: ((value) {
                setState(() {
                  b = value!;
                });
              }),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.person),
              title: Text("1.90"),
              subtitle: Text("tall"),
              value: d,
              onChanged: ((value) {
                setState(() {
                  d = value!;
                });
              }),
            ),
            Divider(
              height: 60,
              thickness: 10,
            ),
            Text(
              "How is your teacher",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            DropdownButton(
                value: def,
                items: myOp
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: ((val) {
                  setState(() {
                    def = val.toString();
                  });
                })),
            Divider(
              height: 100,
              thickness: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  });
                },
                child: Text(
                  "Go to main page",
                  style: TextStyle(fontSize: 25),
                ))
          ]),
        ),
      ),
    );
  }
}
