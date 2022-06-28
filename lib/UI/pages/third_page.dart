import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/widgets/menu.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  static const String title = "   Друзья-товарищи";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text("Гавриленко Михаил"),
          ListTile(
            title: Expanded(
                child: Card(
                  child:  Icon (Icons.group_add),
                )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return MyScaffold(body:
                    Column(
                      children: [
                        // Image.network(newNews.photoURL),
                        Text("Тут будет форма поиска и добавления друзей"),
                      ],
                    ), title: "Мои друзья");
                  }));
            },
          ),
          Text("Михаил был онлайн 2ч. назад. "
              "Он участвует в 3 предстоящих мероприятиях"),
        ],
      ),
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

