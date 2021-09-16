import 'package:flutter/material.dart';

import '../../colors.dart';

class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final Size deviceSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
            flex: 12,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              height: deviceSize.height / 18,
              decoration: BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for an product',
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    hintStyle: TextStyle(
                      fontFamily: 'Caviar',
                      fontSize: deviceSize.height / 55,
                    ),
                    prefixIcon: Container(
                      child: Image.asset("assets/icons/search.png"),
                    )),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          child: Image.asset('assets/icons/settings.png'),
        ))
      ],
    );
  }
}
