import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final Size deviceSize =MediaQuery.of(context).size;
    return Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top + 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: deviceSize.height/10 - MediaQuery.of(context).padding.top,
              width: deviceSize.height/10 - MediaQuery.of(context).padding.top,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/icons/cropedMenu.png"))
              ),
            ),
             Container(
              height: deviceSize.height/10 - MediaQuery.of(context).padding.top,
              width: deviceSize.height/10 - MediaQuery.of(context).padding.top,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/icons/shopping-cart.png"))
              ),
            )
          ],
        ),
    );
  }
}