import 'package:flutter/material.dart';

import '../../../../config/utils/app_constants.dart';

class ViewSettings extends StatelessWidget {
  const ViewSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Container(
      height: 40,
      width: 140,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: viewFilters.length,
            itemBuilder: (context, index) {
              bool selected = selectedIndex == index;
              return Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.only(right: 10),
                color: selected ? Colors.blue : Colors.white,
                child: Image.asset(
                  viewFilters[index],
                  color: selected ? Colors.white : Colors.grey,
                  height: 24,
                ),
              );
            }),
      ),
    );
  }
}
