import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            press: () {
            },
            image: 'assets/images/bottom_img_1.png',
          ),
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: FeaturedPlantCard(
              press: () {},
              image: 'assets/images/bottom_img_2.png',
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({Key? key, required this.image, required this.press}) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding, bottom: kDefaultPadding / 2, top: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
