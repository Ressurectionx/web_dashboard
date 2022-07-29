import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/config/utils/app_constants.dart';

class DropDown extends StatelessWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: const Color(0xffe8e7e7))),
      child: Center(
          child: DropdownButton<String>(
        iconEnabledColor: Colors.grey.shade500,
        iconDisabledColor: Colors.grey.shade500,
        hint: Text("Yearly",
            style:
                GoogleFonts.poppins(fontSize: 12, color: Colors.grey.shade500)),
        underline: const SizedBox(),
        items: periodically.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: GoogleFonts.poppins(
                  fontSize: 12, color: Colors.grey.shade700),
            ),
          );
        }).toList(),
        onChanged: (value) {},
      )),
    );
  }
}
