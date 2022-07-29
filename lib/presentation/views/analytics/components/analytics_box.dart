import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/presentation/views/analytics/components/drop_down.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

import 'product_availability.dart';
import 'product_profit.dart';

class AnalyticsBox extends StatelessWidget {
  const AnalyticsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      width: MediaQuery.of(context).size.width * 0.17,
      height: MediaQuery.of(context).size.width * 0.28,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topPadding(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              productAvailability(
                  "Purchased", "32.860", "Pairs", Colors.red.shade300),
              leftPadding(60),
              productAvailability(
                  "Available", "23.328", "Pairs", Colors.blue.shade500),
            ],
          ),
          topPadding(20),
          Row(
            children: [
              productProfitRatio("Product Income", "\$1286", "12%",
                  Colors.blue.shade500, Colors.blue.withOpacity(0.2)),
              leftPadding(55),
              const DropDown(),
            ],
          ),
          topPadding(15),
          Image.asset("assets/icons/img_1.png"),
          topPadding(20),
          Row(
            children: [
              productProfitRatio("Product Spending", "\$1032", "10%",
                  Colors.red.shade300, Colors.red.withOpacity(0.2)),
              leftPadding(55),
              const DropDown(),
            ],
          ),
          topPadding(15),
          Image.asset("assets/icons/img_2.png"),
        ],
      ),
    );
  }
}
