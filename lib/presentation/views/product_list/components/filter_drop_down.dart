import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

class FilterDropDown extends StatelessWidget {
  String hint;
  String title;
  List<String> list;

  FilterDropDown(this.hint, this.title, this.list, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xffe8e7e7))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: GoogleFonts.poppins(
                    fontSize: 12, color: Colors.grey.shade500)),
            leftPadding(4),
            DropdownButton<String>(
              iconEnabledColor: Colors.grey.shade500,
              iconDisabledColor: Colors.grey.shade500,
              hint: Text(hint,
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: Colors.grey.shade800)),
              underline: const SizedBox(),
              items: list.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Colors.grey.shade800),
                  ),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ],
        ));
  }
}
