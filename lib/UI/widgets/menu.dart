import 'package:flutter/material.dart';
import 'package:lesson_7/UI/Theme/app_colors.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/pages/fourth_page.dart';
import 'package:lesson_7/UI/pages/sekond_page.dart';
import 'package:lesson_7/UI/pages/third_page.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    width: width,
    color: AppColors.mainDarkBlue4,
    child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        ListTile(
          title: Text("Новости"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyScaffold(selectedTab: 0,);
                }));
          },
        ),
        ListTile(
          title: Text("Карта"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyScaffold(selectedTab: 1,);
                }));
          },
        ),
        ListTile(
          title: Text("Друзья"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyScaffold(selectedTab: 2,);
                }));
          },
        ),
        ListTile(
          title: Text("Сообщения"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyScaffold(selectedTab: 3,);
                }));
          },
        ),
      ],
    ),
  );
}