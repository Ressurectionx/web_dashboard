import 'package:flutter/material.dart';
import 'package:web_dashboard/presentation/views/product_list/product_details/product_details.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

import 'components/all_filters.dart';
import 'components/category_row.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.28,
      child: Container(
        width: width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topPadding(50),
            const AllFilters(),
            topPadding(35),
            categoryRow(MediaQuery.of(context).size.width),
            Container(
              width: width - (width * 0.38),
              height: width - (width * 0.60),
              color: Colors.white,
              child: const ProductDetails(),
            )
          ],
        ),
      ),
    );
  }
}
