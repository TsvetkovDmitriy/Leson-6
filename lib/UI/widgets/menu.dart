import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/pages/fourth_page.dart';
import 'package:lesson_7/UI/pages/sekond_page.dart';
import 'package:lesson_7/UI/pages/third_page.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    width: width,
    color: Colors.deepOrange[200],
    child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        ListTile(
          title: Text("Страница 1"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return FirstScreen();
                }));
          },
        ),
        ListTile(
          title: Text("Страница 2"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return SecondPage();
                }));
          },
        ),
        ListTile(
          title: Text("Страница 3"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return ThirdPage();
                }));
          },
        ),
        ListTile(
          title: Text("Страница 4"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return FourthPage();
                }));
          },
        ),
      ],
    ),
  );
}