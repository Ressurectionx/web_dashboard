import 'package:flutter/material.dart';
import 'package:web_dashboard/config/utils/app_constants.dart';

import 'add_new_button.dart';
import 'filter_drop_down.dart';
import 'view_settings.dart';

class AllFilters extends StatelessWidget {
  const AllFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - (width * 0.38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterDropDown("Sneakers", "Category:", category),
          FilterDropDown("Zamoran", "Brand:", brand),
          FilterDropDown("Best Seller", "Sort By:", sort_by),
          const AddNewButton(),
          const ViewSettings()
        ],
      ),
    );
  }
}
