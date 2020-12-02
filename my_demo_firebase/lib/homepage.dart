



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_demo_firebase/catagories.dart';

import 'bodypage.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  Widget _bulidListItem(BuildContext context, DocumentSnapshot document) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            child: Card(
              elevation: 5.0,
              child: Text(
                document.data()['name'],
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
      Column(
        children: [
          Categories(),
          Body(),
        ],
      ),



    );


  }
}