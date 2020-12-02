

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Widget _bulidListItems(BuildContext context, DocumentSnapshot document) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
        document.data()['imageurl'],),

        Text(
          document.data()['name'],
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
          document.data()['price'].toString(),
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('handbags').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text('loading');
          return Expanded(

            child: ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _bulidListItems(context, snapshot.data.documents[index]),
            ),
          );
        });
  }
}
