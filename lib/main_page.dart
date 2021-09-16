import 'package:flutter/material.dart';

import 'widgets/top_menu.dart';
import 'home_page/home_page.dart';
import 'categories_page/categories_page.dart';
import 'colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageViewConroller = PageController();
  final Map<String, String> bottomItems = {
    "Home": "assets/icons/home.png",
    "Categories": "assets/icons/search.png",
    "My Cart": "assets/icons/shopping-cart.png",
    "More": "assets/icons/menu.png",
  };
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          child: TopMenu(),
          preferredSize: Size(deviceSize.width, deviceSize.height / 18)),
      body: PageView(
        onPageChanged: (index){
          setState(() {
            pageIndex = index;
          });
          pageViewConroller.animateToPage(pageIndex,
              duration: Duration(milliseconds: 800), curve: Curves.decelerate);
        },
        controller: pageViewConroller,
        children: [
          HomePage(),
          CategotiesPage(),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
          pageViewConroller.animateToPage(pageIndex,
              duration: Duration(milliseconds: 800), curve: Curves.decelerate);
        },
        selectedFontSize: 11.0,
        selectedItemColor: green2,
        unselectedFontSize: 11.0,
        unselectedItemColor: black,
        showUnselectedLabels: true,
        elevation: 2.0,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          bottomItems.length,
          (index) => BottomNavigationBarItem(
            label: bottomItems.keys.toList()[index],
            icon: Container(
              padding: EdgeInsets.all(2),
              height: 20,
              width: 20,
             child: Image.asset(bottomItems.values.toList()[index], color: pageIndex ==index? green2:black,)
            ),
          ),
        ),
      ),
    );
  }
}
