import 'package:flutter/material.dart';
import 'package:online_shop_mobile_app/pages/pages.dart';
import 'package:online_shop_mobile_app/style.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  PageController _pageController = PageController(initialPage: 0);
  var _currentIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(_currentIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          HistoryPage(),
          CartPage(),
          MePage(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(defaultBorderRadius * 2),
        ),
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(defaultBorderRadius * 2),
            ),
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_rounded), label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: 'Me'),
            ],
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
