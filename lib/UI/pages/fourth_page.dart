import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  static const String title = "Страница 4";

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: Text("   Сообщения и всякие переписки и личные новости"),
      ),
    );
    //   MyScaffold(
    //   title: title,
    //   body: buildBody(context),
    // );
  }

  // buildBody(BuildContext context) {
  //   return Center(
  //     child: Text("Да это пиздец какой-то!"),
  //   );
  // }
}

