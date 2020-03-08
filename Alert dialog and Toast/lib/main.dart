import 'package:deneme/ui/etkin_liste.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Liste denemeleri",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Listeler",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: etkin_liste(),
      ),
    ));
