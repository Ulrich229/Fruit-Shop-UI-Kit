import 'package:flutter/material.dart';

import '../../colors.dart';

class DealCard extends StatelessWidget {
  final String kind;
  final int reduction;
  final Color cardColor;
  final String imagePath;
  DealCard({required this.reduction, required this.kind, required this.cardColor, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 4.6,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: cardColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh $kind',
                    style: TextStyle(
                      color: black,
                      fontSize: deviceSize.height / 35,
                      fontFamily: 'Caviar',
                    ),
                  ),
                  Text(
                    'Upto',
                    style: TextStyle(
                      color: black,
                      fontSize: deviceSize.height / 35,
                      fontFamily: 'Caviar',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: '$reduction',
                              style: TextStyle(
                                  color: black,
                                  fontSize: deviceSize.height / 20,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: "%",
                                  style: TextStyle(
                                      color: black,
                                      fontSize: deviceSize.height / 45,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                        
                  Text(
                    'OFF',
                    style: TextStyle(
                        color: black,
                        fontSize: deviceSize.height / 75,
                        fontWeight: FontWeight.bold),
                  ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: deviceSize.height / 6,
              width: deviceSize.height / 6,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
