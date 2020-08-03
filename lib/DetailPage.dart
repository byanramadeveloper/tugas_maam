import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemmaterial;
  final String itemtutor;
  final String itemimg;

  const DetailPage(
      {Key key,
      this.itemJudul,
      this.itemmaterial,
      this.itemtutor,
      this.itemimg})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Detail' + itemJudul,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Image.asset(itemimg),
          ),
          Text(
            itemmaterial,
            style: TextStyle(color: Colors.redAccent, fontSize: 24.0),
          ),
          Text(itemtutor),
          Text('Cara membuat:' + '   ' + itemtutor),
        ],
      ),
    );
  }
}
