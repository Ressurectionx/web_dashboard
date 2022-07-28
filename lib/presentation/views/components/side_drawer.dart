import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 200,

    child: Container(
      color: Colors.black,
      child: Column(children: [
        Container(
          height: 40,
          color: Colors.red,
        )
      ],),
    )
      ,);
  }
}
