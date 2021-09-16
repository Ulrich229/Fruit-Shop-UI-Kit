import 'package:flutter/material.dart';

import '../../colors.dart';

class PinCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Card(
      elevation: 13.0,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: deviceSize.height / 20,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: deviceSize.height / 40,
              width: deviceSize.height / 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/placeholder.png")),
              ),
            ),
            Text("Delivery to", style: TextStyle(color: blue2 , fontSize: deviceSize.height / 60),),
            Text("Jumeirah Lakes Tower", style: TextStyle(color: Colors.black38 , fontSize: deviceSize.height / 60),),
            Text("CHANGE", style: TextStyle(color: green2 , fontSize: deviceSize.height / 60),),
          ],
        ),
      ),
    );
  }
}