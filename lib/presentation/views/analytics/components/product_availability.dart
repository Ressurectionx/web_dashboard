import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

Widget productAvailability(title, number, pair, color) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topPadding(10),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        topPadding(10),
        RichText(
          text: TextSpan(
              text: number,
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600, color: color),
              children: <TextSpan>[
                TextSpan(
                  text: "  $pair",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade300),
                )
              ]),
        )
      ],
    );
