import 'package:dogphy/screens/pages/cart.dart';
import 'package:dogphy/screens/pages/category.dart';
import 'package:dogphy/screens/pages/home.dart';
import 'package:dogphy/screens/pages/profile.dart';
import 'package:dogphy/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> screens = [
    const MyHome(),
    const Category(),
    const Cart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        // ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          fixedColor: AppColor.primary,
          type: BottomNavigationBarType.fixed,
          onTap: (value) => setState(() => currentIndex = value),
          selectedIconTheme: IconThemeData(color: AppColor.primary),
          selectedLabelStyle: TextStyle(color: AppColor.primary),
          unselectedLabelStyle: TextStyle(color: AppColor.txtblack),
          unselectedItemColor: AppColor.txtblack,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_rounded), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
