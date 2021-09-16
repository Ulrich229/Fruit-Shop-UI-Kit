import 'package:flutter/material.dart';

import '../../colors.dart';

class ProductGrid extends StatelessWidget {
  final String kind;
  final List<String> imagePaths;
  const ProductGrid({Key? key, required this.kind, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fresh $kind",
          style: TextStyle(fontSize: deviceSize.height / 45, color: black),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: deviceSize.width / 1.8,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: deviceSize.width / 4,
                childAspectRatio: 4 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 15),
            itemBuilder: (ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: grey,
                  image: DecorationImage(image: AssetImage("assets/images/${imagePaths[index]}"))
                ),
              );
            },
            itemCount: imagePaths.length,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              'See More',
              style: TextStyle(
                color: green2,
                fontFamily: 'Caviar',
                fontSize: MediaQuery.of(context).size.height / 62,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
