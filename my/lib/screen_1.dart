import 'package:my/main.dart';
import 'package:flutter/material.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  String lol = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.lightGreen,
        child: Center(
            child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Your favorite book",
              style: TextStyle(fontSize: 25),
            ),
            Divider(height: 50),
            RadioListTile(
                title: Text("arabic"),
                subtitle: Text("book"),
                secondary: Icon(Icons.book),
                value: "arab",
                groupValue: lol,
                onChanged: ((val) {
                  lol = val.toString();
                  setState(() {
                    lol = lol;
                  });
                })),
            RadioListTile(
                title: Text("english"),
                subtitle: Text("book"),
                secondary: Icon(Icons.book),
                value: "emgl",
                groupValue: lol,
                onChanged: ((val) {
                  lol = val.toString();
                  setState(() {
                    lol = lol;
                  });
                })),
            RadioListTile(
                title: Text("france"),
                subtitle: Text("book"),
                secondary: Icon(Icons.book),
                value: "as",
                groupValue: lol,
                onChanged: ((val) {
                  lol = val.toString();
                  setState(() {
                    lol = lol;
                  });
                })),
            Divider(height: 100),
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
          ],
        )),
      ),
    );
  }
}
