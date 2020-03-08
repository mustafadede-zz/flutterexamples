import 'package:flutter/material.dart';

class listTile extends StatelessWidget {
  //liste numaraları
  List<int> listeNumaralri = List.generate(300, (index) => index);
  List<String> listAltBaslik =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listeNumaralri.map((oankieleman) => Column(
              children: <Widget>[
                Container(
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.bluetooth),
                    ),
                    title: Text("Merhaba $oankieleman"),
                    subtitle: Text(listAltBaslik[oankieleman]),
                    trailing: Icon(Icons.add),
                  ),
                ),
              ),
              ],
            )
          ).toList()
        );
  }
}
/**
 * <Widget>[
        Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.all(15),
            color: Colors.grey.shade300,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth),
              ),
              title: Text("Merhaba"),
              subtitle: Text("alt başlık"),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.all(15),
            color: Colors.grey.shade300,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth),
              ),
              title: Text("Merhaba"),
              subtitle: Text("alt başlık"),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.all(15),
            color: Colors.grey.shade300,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth),
              ),
              title: Text("Merhaba"),
              subtitle: Text("alt başlık"),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.all(15),
            color: Colors.grey.shade300,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth),
              ),
              title: Text("Merhaba"),
              subtitle: Text("alt başlık"),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.all(15),
            color: Colors.grey.shade300,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth),
              ),
              title: Text("Merhaba"),
              subtitle: Text("alt başlık"),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.all(15),
            color: Colors.grey.shade300,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth),
              ),
              title: Text("Merhaba"),
              subtitle: Text("alt başlık"),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
      ],
 */
