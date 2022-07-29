import 'package:flutter/material.dart';
import 'package:web_dashboard/config/utils/app_constants.dart';
import 'package:web_dashboard/presentation/widgets/paddings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    return Positioned(
        left: 0,
        child: (SizedBox(
          width: MediaQuery.of(context).size.width * 0.08,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              topPadding(50),
              Image.asset(
                "assets/icons/logo2.png",
                width: 50,
              ),
              topPadding(20),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                      child: SizedBox(
                          height: 26,
                          child: Image.asset(
                            icons[index],
                            color: selectedIndex == index
                                ? Colors.blue
                                : Colors.grey,
                          )),
                    );
                  }),
              Expanded(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 50,
                    child: Image.asset(
                      "assets/icons/logout.png",
                      width: 24,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    child: Image.asset(
                      "assets/icons/img.png",
                      width: 50,
                    ),
                  )
                ],
              ))
            ],
          ),
        )));
  }
}
