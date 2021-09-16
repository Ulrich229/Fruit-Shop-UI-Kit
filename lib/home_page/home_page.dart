import 'package:flutter/material.dart';

import '../colors.dart';
import 'widgets/header_text.dart';
import 'widgets/pin_card.dart';
import 'widgets/deal_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText(),
          SizedBox(
            height: 20,
          ),
          PinCard(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Essential Deals',
            style: TextStyle(color: black, fontSize: deviceSize.height / 25),
          ),
          SizedBox(
            height: 20,
          ),
          DealCard(kind: 'Fruits',cardColor: green1,reduction: 25,imagePath: "assets/images/basket.png",),
           SizedBox(
            height: 15,
          ),
           DealCard(kind: 'Veg',cardColor: blue1,reduction: 40,imagePath: "assets/images/foodBag.png",),
        ],
      ),
    );
  }
}

