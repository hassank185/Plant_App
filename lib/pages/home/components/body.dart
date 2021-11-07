import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/home/components/featured_plants_card.dart';
import 'package:plant_app/pages/home/components/header_with_search_box.dart';
import 'package:plant_app/pages/home/components/recommend_plant_card.dart';
import 'package:plant_app/pages/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}