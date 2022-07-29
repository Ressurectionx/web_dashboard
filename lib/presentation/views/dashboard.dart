import 'package:flutter/material.dart';
import 'package:web_dashboard/presentation/views/my_drawer/my_drawer.dart';

import 'analytics/analytics.dart';
import 'product_list/product_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: const [
        MyDrawer(),
        Analytics(),
        ProductList(),
      ],
    ));
  }
}
