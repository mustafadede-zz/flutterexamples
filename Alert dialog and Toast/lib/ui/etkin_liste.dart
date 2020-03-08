import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart'; // toast

class etkin_liste extends StatelessWidget {
  List<ogrenci> tumogrenciler = [];
  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 5 == 0 && index != 0) {
            return Container(
              color: Colors.indigo.shade300,
              width: 5,
              height: 5,
            );
          } else {
            return Container();
          }
        },
        itemCount: 20,
        itemBuilder: (context, index) => Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.bluetooth_audio),
                title: Text(tumogrenciler[index]._isim),
                subtitle: Text(tumogrenciler[index]._aciklama),
                trailing: Icon(Icons.add),
                onLongPress: () {
                  alertDialogGoster(context, index);
                },
                onTap: () {
                  alertDialogGoster(context, index);
                },
              ),
            ));
  }

  void ogrenciVerileriniGetir() {
    tumogrenciler = List.generate(
        300,
        (index) => ogrenci("Öğrenci $index", "Açıklama $index",
            index % 2 == 0 ? true : false));
  }

  void toastMesaj(int index, bool uzunMu) {
    Fluttertoast.showToast(
        msg: uzunMu
            ? "Uzun basıldı: " + tumogrenciler[index].toString()
            : "Kısa basıldı: " + tumogrenciler[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.indigo,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialogGoster(BuildContext ctx, index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog başlığı"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Öğrenci ismi : " + tumogrenciler[index]._isim,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Öğrenci açıklaması : " + tumogrenciler[index]._aciklama),
                ],
              ),
            ),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("Tamam")),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("İptal")),
                ],
              )
            ],
          );
        });
  }
}

class ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;
  ogrenci(this._isim, this._aciklama, this._cinsiyet);
  @override
  String toString() {
    // TODO: implement toString
    return "Öğrenci ismi:$_isim,açıklama:$_aciklama";
  }
}
