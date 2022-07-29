import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  DocumentSnapshot<Object?> doc;

  DetailsRow(this.doc,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: EdgeInsets.all(4),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey.shade100),
          child: Image.network(
            doc["image"],fit: BoxFit.fill,
          ),
        ),
        Text(doc["id"]),
        Text(doc["name"]),
         Text(doc["size"]),
         Text(doc["price"]),
         Text(doc["pairs"]),
      ],
    );
  }
}
