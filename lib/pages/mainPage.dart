import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'analiz_main.dart';
import 'person_cart.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bottomNavigation(),
    );
  }
}

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _pagesState();
}

class _pagesState extends State<bottomNavigation> {

  int _selectedPage = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    AnalizMain(),
    AnalizMain(),
    AnalizMain(),
    PersonCart(),
  ];

  void onSelectTab(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  Center(
          child: _widgetOptions[_selectedPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xFFB8C1CC),
          backgroundColor: Color(0xFFFFFFFF),
          selectedItemColor: Color(0xFF1A6FEE),
          currentIndex: _selectedPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: new SvgPicture.asset('assets/image/analiz_nopress.svg'),
                label: 'Анализы'
            ),
            BottomNavigationBarItem(
                icon: new SvgPicture.asset('assets/image/result.svg'),
                label: 'Результаты'
            ),
            BottomNavigationBarItem(
                icon: new SvgPicture.asset('assets/image/help.svg'),
                label: 'Поддержка'
            ),
            BottomNavigationBarItem(
                icon: new SvgPicture.asset('assets/image/profile.svg'),
                label: 'Профиль'
            ),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}

