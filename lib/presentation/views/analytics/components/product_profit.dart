import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

Widget productProfitRatio(title, number, percentage, color1, color2) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topPadding(10),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        topPadding(10),
        Row(
          children: [
            Text(number,
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600, color: color1)),
            leftPadding(8),
            Container(
              width: 45,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color2,
              ),
              child: Row(
                children: [
                  leftPadding(8),
                  Text(percentage,
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: color1)),
                  Icon(
                    Icons.arrow_drop_up_outlined,
                    size: 13,
                    color: color1,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
