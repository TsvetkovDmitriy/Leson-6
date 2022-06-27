import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/pages/fourth_page.dart';
import 'package:lesson_7/UI/pages/sekond_page.dart';
import 'package:lesson_7/UI/pages/third_page.dart';
import 'package:lesson_7/UI/widgets/menu.dart';

import '../Theme/app_colors.dart';

// class TooMyScaffold extends StatefulWidget {
//   const TooMyScaffold({Key? key}) : super(key: key);
//
//   @override
//   State<TooMyScaffold> createState() => _TooMyScaffoldState();
// }
//
// class _TooMyScaffoldState extends State<TooMyScaffold> {
//   @override
//   Widget build(BuildContext context) {
//
//   }

int selectedTab = 0;


class MyScaffold extends StatefulWidget {
  final String title;
  // final Widget body;
  final Widget? body;

  const MyScaffold({Key? key, this.title = 'Заголовок', int? selectedTab = 0, this.body})
      : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {

  // int selectedTab = 0;
  Widget? _body;

  @override
  void initState() {

    _body = widget.body;
    super.initState();
  }
  void onSelectTab(int index) {
    // if (selectedTab == index) return;
    setState(() {
      _body = null;
      selectedTab = index;
    });
  }

  List <Widget> _selectPage = <Widget> [
    FirstScreen(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        // body: Center(child: SingleChildScrollView(child: Text(myString,
        //   style: TextStyle(fontSize: 24),)),),
        body:
        Row(
          children: [
            Expanded(child: _selectPage [selectedTab]),
            buildMenu(context, onSelectTab, width: width * 0.25),
          ],
        )
        // _selectPage [selectedTab],
        // Row(
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Text(
        //         widget.title,
        //         style: TextStyle(fontSize: 24),
        //       ),
        //     ),
        //     // Expanded(flex: 3, child: widget.body),
        //     buildMenu(context, width: width * 0.25)
        //   ],
        // ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: AppColors.mainDarkBlue,
        ),
        drawerEdgeDragWidth: width * 0.7,
        endDrawer: buildMenu(context, onSelectTab,  width: width * 0.7,),
        body:  _body == null ?
        // _body?? - второй вариант, двоеточие не нужно и что после него!
        _selectPage [selectedTab] : _body,
        // widget.body,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'Новости',
              backgroundColor: AppColors.mainDarkBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Карта',
              backgroundColor: AppColors.mainDarkBlue2,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Друзья',
              backgroundColor: AppColors.mainDarkBlue3,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Сообщения',
              backgroundColor: AppColors.mainDarkBlue4,
            ),
          ],
          currentIndex: selectedTab,
          onTap: onSelectTab,
        ),
      );
    }
  }
}
