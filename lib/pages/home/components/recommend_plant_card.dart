import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/details/details_page.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            price: 440,
            press: () {  Navigator.push(context,MaterialPageRoute(builder: (context) => DetailsPage()));},
            country: 'Russia',
            title: 'Samantha',
            image: 'assets/images/image_1.png',
          ),
          RecommendPlantCard(
            price: 550,
            press: () {  Navigator.push(context,MaterialPageRoute(builder: (context) => DetailsPage()));},
            country: 'Russia',
            title: 'Angelica',
            image: 'assets/images/image_2.png',
          ),
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: RecommendPlantCard(
              price: 350,
              press: () {  Navigator.push(context,MaterialPageRoute(builder: (context) => DetailsPage()));},
              country: 'Russia',
              title: 'Samantha',
              image: 'assets/images/image_3.png',
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(offset: Offset(0, 10), blurRadius: 50, color: kPrimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
