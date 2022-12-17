import 'package:ambulant/screens/favourite/favourite_page.dart';
import 'package:ambulant/screens/local_type/local_type_page.dart';
import 'package:flutter/material.dart';

class BodyHolder extends StatefulWidget {
  const BodyHolder({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BodyHolder();
  }
}

class _BodyHolder extends State<BodyHolder> {
  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;
  final _bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          color: Colors.yellow,
        ),
        label: 'Favorite'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        scrollDirection: Axis.horizontal,
        children: [
          FavouritePage(),
          LocalTypePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
        //type: BottomNavigationBarType.fixed
      ),
    );
  }
}
