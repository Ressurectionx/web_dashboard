import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

import 'components/side_drawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
        Positioned(
            left: 0,
            child: (
            SizedBox(
              width: MediaQuery.of(context).size.width*0.08,
              height: MediaQuery.of(context).size.height,
            child:    Column(
              children: [
                topPadding(50),
                Image.asset("assets/icons/logo.png",width: 50,),
                topPadding(70),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context,index){
                  return SizedBox(
                      height: 50,
                      child: Image.asset("assets/icons/logo.png"));
                })
           
        ],),
        ))),


        Positioned(
          left: MediaQuery.of(context).size.width*0.08,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey.shade200,
          ),
        )
      ],)
    );
  }
}
