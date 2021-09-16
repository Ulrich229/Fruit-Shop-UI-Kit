import 'package:flutter/material.dart';

import '../../colors.dart';

class LeftMenu extends StatelessWidget {
  final List<String> categories = [
    "Dairy & Eggs",
    "Bread & Bakery",
    "Meat & Seafood",
    "Frozen Food",
    "Pets Supply",
    "Pantry Stoples",
    "Snakes",
    "Candy & Chocolates",
    "Baby Food",
    "Skin Care"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: green1,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...categories
              .map((e) => MaterialButton(
                     padding: EdgeInsets.zero,
                    onPressed: () {},
                    splashColor: green2,
                    child: Container(
                      padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 2,
                              color:
                                  Theme.of(context).scaffoldBackgroundColor))),
                  child:Text(
                      e,
                      style: TextStyle(
                        fontFamily: 'Caviar',
                        fontSize: MediaQuery.of(context).size.height / 62,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )))
              .toList()
        ],
      ),
    );
  }
}
