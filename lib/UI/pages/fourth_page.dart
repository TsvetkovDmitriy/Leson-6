import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  static const String title = "Страница 4";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 288,

        decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
        child: Row(

            children: [
              IconButton(
                  color: Colors.grey,
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(Icons.account_circle)),
              Text ('Иванов Иван')]
        ),
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

