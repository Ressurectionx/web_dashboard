import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

import 'components/analytics_box.dart';
import 'components/search_box.dart';

class Analytics extends StatelessWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width * 0.08,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.20,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topPadding(50),
                Text(
                  "Search for Items",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                topPadding(16),
                Text(
                  "Type ID Number or name of items",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                topPadding(24),
                const SearchBox(),
                topPadding(24),
                const AnalyticsBox(),
                topPadding(10),
                Image.asset(
                  "assets/icons/img_3.png",
                  width: MediaQuery.of(context).size.width * 0.173,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ));
  }
}
