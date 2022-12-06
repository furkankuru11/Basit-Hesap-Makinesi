import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basit Hesap Makinesi",
      home: Ekran(),
    );
  }
}

class Ekran extends StatelessWidget {
  const Ekran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit heHesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        50,
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: RaisedButton(
                      onPressed: sayiTopla,
                      child: Icon(Icons.add),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: RaisedButton(
                      onPressed: sayiCikar,
                      child: Icon(Icons.remove),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: RaisedButton(
                      onPressed: sayiCarp,
                      child: Text("X"),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: RaisedButton(
                      onPressed: sayiBol,
                      child: Text("/"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  void sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  void sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  void sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }
}
