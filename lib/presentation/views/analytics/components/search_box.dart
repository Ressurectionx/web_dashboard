import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.17,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey.shade200),
          color: Colors.white),
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            decoration: InputDecoration(
                label: Text(
                  "Search item here",
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade500,
                    fontSize: 15,
                  ),
                ),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  size: 22,
                ),
                border: InputBorder.none),
          )),
    );
  }
}
