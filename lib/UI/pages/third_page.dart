import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  static const String title = "   Друзья-товарищи";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('   А тут будут иконки с переходом на страницы твоих друзей'),
    );
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

