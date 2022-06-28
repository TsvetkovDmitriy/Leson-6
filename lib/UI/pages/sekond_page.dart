import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  static const String title = "Карта событий";

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.network('https://static.ngs.ru/news/52/preview/9fedf6ad1eb7d680ca99c61dd3088baa01e4e3b1_720_405_c.jpg'));
    //   Container(
    //   child: Center(
    //     child: Text('   Представь себе, что тут будет карта города с показанными на ней событиями в виде иконок'),
    //   ),
    // );
    //   MyScaffold(
    //   title: title,
    //   body: buildBody(context),
    // );
  }

  // buildBody(BuildContext context) {
  //   return Center(
  //     child: Text(title),
  //   );
  // }

}

