import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/navpages/bar_item_page.dart';
import 'package:travel_app/pages/navpages/my_page.dart';
import 'package:travel_app/pages/navpages/search_pages.dart';

import 'bar_item_page.dart';
import 'main_page.dart';
import 'main_page.dart';


class BottumNav extends StatefulWidget {
  const BottumNav({Key? key}) : super(key: key);

  @override
  State<BottumNav> createState() => _BottumNavState();
}

class _BottumNavState extends State<BottumNav> {
  int currentIndex = 0;

  late List<Widget> pages;
  @override
  void initState() {
    pages = [
      const HomePage(),
      const BarItemPage(),
      const SearchPage(),
      const MyPage(),
    ];
    super.initState();
  }

  void _onItemTap(int selecteditems) {
    setState(
      () {
        currentIndex = selecteditems;
      },
    );
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "My", icon: Icon(Icons.person)),
          ],
          // const [
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.home_filled),
          //     label: "Home",
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.chat),
          //     label: "Second",
          //   ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.group),
          //   label: "Groups",
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.view_agenda),
          //   label: "Status",
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.call),
          //   label: "Calls",
          // ),
          // ],
        ),
      ),
    );
  }
}
