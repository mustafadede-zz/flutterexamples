import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;
  MyHomePage({this.title}) {
    debugPrint("MyHomePage statefull wigdet constructor");
  }
  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage create state tetiklendi.");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState() {
    debugPrint("MyHomePage State constructor tetiklendi");
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage state buld metodu tetiklendi");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget öğrenimi"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Altta olan sayı artacak veya azalacak",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "${widget.sayac}",
                style: Theme.of(context).textTheme.display1.copyWith(
                  color: widget.sayac <= 0 ? Colors.red : Colors.green 
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          sayacArttir();
                        });
                      },
                      color: Colors.green,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Text("arttır"),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          sayacAzalt();
                        });
                      },
                      color: Colors.red,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Text("azalt"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sayacArttir() {
    widget.sayac++;
  }

  void sayacAzalt() {
    widget.sayac--;
  }
}
