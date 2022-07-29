import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.blue.shade800, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Add New items",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
          ),
          leftPadding(4),
          const Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
    );
  }
}
