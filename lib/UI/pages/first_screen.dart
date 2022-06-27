// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/third_page.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';
import 'package:lesson_7/UI/widgets/news_widget.dart';

class FirstScreen extends StatelessWidget {
  static const String title = "Тут все новости";

  @override
  Widget build(BuildContext context) {
    return ListView.builder( itemCount: list1.length,
      itemBuilder: (BuildContext context, int index) {

      return NewsWidget( list1[index]);
    },);
  //     MyScaffold(
  //     title: title,
  //     body: buildBody(context),
  //   );
  // }
  //
  // buildBody(BuildContext context) {
  //   return ListView.builder(itemBuilder: (BuildContext context, int index) {
  //     News newsEntry = News(
  //         title: "Новость $index",
  //         text: "Какой-то текст $index",
  //         id: index.toString(),
  //         photoURL: "https://w-dog.ru/wallpapers/5/17/293758380766135/kot-mejn-kun-ryzhij-pushistyj.jpg");
  //     return NewsWidget(newsEntry);
  //   },);
      
    //   SingleChildScrollView(
    //   child: Column(children: [
    //     NewsWidget(),
    //     NewsWidget(),
    //     NewsWidget(),
    //     NewsWidget(),
    //   ],),
    // );
  }
}
