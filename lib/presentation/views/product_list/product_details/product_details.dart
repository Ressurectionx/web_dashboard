import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

import 'details_row.dart';
import 'product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);
/*
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
            //padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300)),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: const DetailsRow(),
              leading: Checkbox(
                value: isSelected,
                onChanged: (selected) {},
                side: BorderSide(color: Colors.grey.shade300),
                checkColor: Colors.grey.shade200,
              ),
              children: [
                Column(
                  children: [
                    topPadding(20),
                    Container(
                      height: 2,
                      width: width - (width * 0.45),
                      color: Colors.grey.shade300,
                    ),
                    topPadding(30),
                    Product(),
                    topPadding(40),
                  ],
                )
              ],
            ),
          );
        });
  }*/

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    bool isSelected = false;
    double width = MediaQuery.of(context).size.width;
   return  SizedBox(
     height: 200,
     width: 200,
     child: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection("Products").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot doc = snapshot.data!.docs[index];
                  return Container(
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                    //padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      title: DetailsRow(doc),
                      leading: Checkbox(
                        value: isSelected,
                        onChanged: (selected) {},
                        side: BorderSide(color: Colors.grey.shade300),
                        checkColor: Colors.grey.shade200,
                      ),
                      children: [
                        Column(
                          children: [
                            topPadding(20),
                            Container(
                              height: 2,
                              width: width - (width * 0.45),
                              color: Colors.grey.shade300,
                            ),
                            topPadding(30),
                            Product(doc),
                            topPadding(40),
                          ],
                        )
                      ],
                    ),
                  );
                });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
   );

/*
      ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
            //padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300)),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: const DetailsRow(),
              leading: Checkbox(
                value: isSelected,
                onChanged: (selected) {},
                side: BorderSide(color: Colors.grey.shade300),
                checkColor: Colors.grey.shade200,
              ),
              children: [
                Column(
                  children: [
                    topPadding(20),
                    Container(
                      height: 2,
                      width: width - (width * 0.45),
                      color: Colors.grey.shade300,
                    ),
                    topPadding(30),
                    Product(),
                    topPadding(40),
                  ],
                )
              ],
            ),
          );
        });*/
  }
}
