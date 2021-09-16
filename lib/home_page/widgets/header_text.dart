import 'package:flutter/material.dart';

import '../../colors.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Grocery', style: TextStyle(color: green2, fontSize:deviceSize.height/25 ) ,),
            SizedBox(height: 5,),
            Text('At Your', style: TextStyle(color: black, fontSize:deviceSize.height/25 ) ,),
            SizedBox(height: 5,),
            Text('Doorstep', style: TextStyle(color: black, fontSize:deviceSize.height/25 ) ,),
        ],
    );
  }
}