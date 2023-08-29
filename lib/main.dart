import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}
class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "GÜNÜN FALI",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      body: falSayfasi(),
      ),
    );
  }
}
class falSayfasi extends StatefulWidget {
  const falSayfasi({super.key});

  @override
  State<falSayfasi> createState() => _falSayfasiState();
}

class _falSayfasiState extends State<falSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            child: Image.asset("images/falci.png"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 35,
                ),
                SizedBox(width: 40,),
                Text("AŞK DURUMU",style: TextStyle(fontSize: 18,color: Colors.red),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

