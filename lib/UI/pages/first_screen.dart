// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/third_page.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';
import 'package:lesson_7/UI/widgets/news_widget.dart';

class FirstScreen extends StatelessWidget {
  static const String title = "Страница 1";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        NewsWidget(),
        NewsWidget(),
        NewsWidget(),
        NewsWidget(),
      ],),
    );
  }
}
