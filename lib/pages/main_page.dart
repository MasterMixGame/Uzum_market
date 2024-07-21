import 'package:flutter/material.dart';
import 'package:uzum_market/Components/Constants.dart';
import 'package:uzum_market/Components/mediaquery.dart';
import 'package:uzum_market/pages/account%20_page.dart';
import 'package:uzum_market/pages/favs_page.dart';
import 'package:uzum_market/pages/home_page.dart';
import 'package:uzum_market/pages/search_page.dart';
import 'package:uzum_market/pages/shopping_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List BottomNavWidget = [
    HomePage(),
    SearchPage(),
    ShoppingPage(),
    FavoritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
           Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                height: m_h(context)*0.05,
                width: m_w(context)*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Center(
                          child: Icon(Icons.search, color: Colors.grey,)
                      ),
                          Container(
                            width: 250,
                            height: 60,
                            margin: EdgeInsets.only(top: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Masulot va toifalarni qidirish",
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          )
                    ],
                  ),
                )
              ),
            ),
        ],
      ),
      body: Center(
        child: BottomNavWidget[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Qidiruv'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Savat'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Istaklar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Kabinet'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
