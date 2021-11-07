

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/bottom_nav_bar.dart';
import 'package:plant_app/pages/home/components/body.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
          body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Color(0xFF0C9869) ,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
  );
}
