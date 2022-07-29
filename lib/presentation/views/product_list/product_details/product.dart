// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

class Product extends StatelessWidget {
  DocumentSnapshot<Object?> doc;

  Product(this.doc,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        leftPadding(40),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: const EdgeInsets.all(4),
          height: 200,
          width: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey.shade100),
          child: Image.network(
            doc["image"],fit: BoxFit.fill,
          ),
        ),
        leftPadding(50),
        ColumnOne(doc),
        leftPadding(50),
        ColumnTwo(doc),
        leftPadding(50),
        ColumnThree(doc),
      ],
    );
  }
}

Widget ColumnOne(doc) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text(
      "Product Name",
      style: GoogleFonts.poppins(
          color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
    ),
    topPadding(6),
    Text(doc["name"],
      style: GoogleFonts.poppins(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
    ),
    topPadding(12),
    Container(
      height: 2,
      width: 265,
      color: Colors.grey.shade300,
    ),
    topPadding(12),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID Number",
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            topPadding(6),
            Text(
              doc["id"],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            topPadding(12),
            Container(
              height: 2,
              width: 125,
              color: Colors.grey.shade300,
            ),
          ],
        ),
        leftPadding(20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Production Year",
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            topPadding(6),
            Text(
              doc["id"],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            topPadding(12),
            Container(
              height: 2,
              width: 125,
              color: Colors.grey.shade300,
            ),
          ],
        )
      ],
    ),
    topPadding(12),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Brand",
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            topPadding(6),
            Text(
              doc["brand"],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            topPadding(12),
            Container(
              height: 2,
              width: 125,
              color: Colors.grey.shade300,
            ),
          ],
        ),
        leftPadding(20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Made In",
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            topPadding(6),
            Text(
              doc["made"],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            topPadding(12),
            Container(
              height: 2,
              width: 125,
              color: Colors.grey.shade300,
            ),
          ],
        )
      ],
    ),
  ],
);

Widget ColumnTwo(doc) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Normal Price",
        style: GoogleFonts.poppins(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
      ),
      topPadding(6),
      Text(
        doc["price"],
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      topPadding(12),
      Container(
        height: 2,
        width: 125,
        color: Colors.grey.shade300,
      ),
      topPadding(12),
      Text(
        "Discount",
        style: GoogleFonts.poppins(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
      ),
      topPadding(6),
      Text(
        "25%",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      topPadding(12),
      Container(
        height: 2,
        width: 125,
        color: Colors.grey.shade300,
      ),
      topPadding(12),
      Text(
        "Discount Price",
        style: GoogleFonts.poppins(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
      ),
      topPadding(6),
      Text(
        doc["discount"],
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      topPadding(12),
      Container(
        height: 2,
        width: 125,
        color: Colors.grey.shade300,
      ),
      topPadding(12)
    ]);

Widget ColumnThree(doc) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Size",
        style: GoogleFonts.poppins(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
      ),
      topPadding(6),
      Text(
        doc["size"],
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      topPadding(12),
      Container(
        height: 2,
        width: 125,
        color: Colors.grey.shade300,
      ),
      topPadding(12),
      Text(
        "Stock pair",
        style: GoogleFonts.poppins(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
      ),
      topPadding(6),
      Text(
        doc["pairs"],
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      topPadding(12),
      Container(
        height: 2,
        width: 120,
        color: Colors.grey.shade300,
      ),
      topPadding(30),

      Container(
        height: 40,
        width: 125,
        decoration: BoxDecoration(
            color: Colors.blue.shade800,
            borderRadius: BorderRadius.circular(6)),
        child:  Center(
          child: Text(
            "Order Now",
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300),
          ),
        ),
      )
    ]);
