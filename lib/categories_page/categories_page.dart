import 'package:flutter/material.dart';

import '../colors.dart';
import 'widgets/search_bar.dart';
import 'widgets/left_menu.dart';
import 'widgets/product_grid.dart';

class CategotiesPage extends StatelessWidget {
  const CategotiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          SearchBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Food",
                      style: TextStyle(
                          fontSize: deviceSize.height / 45, color: green2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: LeftMenu(),
                    ))
                  ],
                ),
                flex: 4,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductGrid(
                        kind: 'Fruits',
                        imagePaths: [
                          "banana.png",
                          "orange.png",
                          "fraise.png",
                          "mango.png"
                        ],
                      ),
                      SizedBox(height: 20,),
                      ProductGrid(
                        kind: 'Vegetable',
                        imagePaths: [
                          "potatoes.png",
                          "lemon.png",
                          "chou.png",
                          "kiwi.png"
                        ],
                      ),
                      SizedBox(height: 20,),
                      ProductGrid(
                        kind: 'Fruits Box',
                        imagePaths: [
                          "potatoes.png",
                          "lemon.png",
                          "chou.png",
                          "kiwi.png"
                        ],
                      )
                    ],
                  ),
                ),
                flex: 6,
              )
            ],
          )), 
        ],
      ),
    );
  }
}
