import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget categoryRow(width) => Container(
    height: 40,
    width: width - (width * 0.38),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight:  Radius.circular(8),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300)),
    child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Text(
              "#####",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade400),
            ),

          Text(
            "ID Number",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.grey.shade400),
          ),
          Text(
            "Product Name",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.grey.shade400),
          ),
          Text(
            "Size",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.grey.shade400),
          ),
          Text(
            "Price",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.grey.shade400),
          ),
           Text(
              "Stock",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade400),
            ),

        ],
      ),
    );
