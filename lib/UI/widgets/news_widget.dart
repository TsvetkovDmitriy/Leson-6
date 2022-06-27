import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/sekond_page.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class NewsWidget extends StatelessWidget {
  final News newNews;

  const NewsWidget(
  this.newNews,
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 1,
      height: 350,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(newNews.title),
          ListTile(
            title: Expanded(
                child: Card(
              child: Image.network(newNews.photoURL),
            )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return MyScaffold(body:  Text(newNews.text, ), title: newNews.title, );
              }));
            },
          ),
          Text(newNews.text),
        ],
      ),
    );
  }
}

class News {
  String title = "Заголовок новости";
  String text = "Текст новости";
  String id = '';
  String photoURL = "Ссылка на фото";

  News(
      { this.title = "Заголовок",
        this.text = "текс",
        this.photoURL = "",
        this.id = "01nn"});
  }

  List <News> list1 = [
    News(
        title: "Новость 1",
        text: "Какой-то текст 1",
        id: "1",
        photoURL: "https://w-dog.ru/wallpapers/5/17/293758380766135/kot-mejn-kun-ryzhij-pushistyj.jpg"),

    News(
        title: "Новость 1",
        text: "Какой-то текст 1",
        id: "1",
        photoURL: "https://w-dog.ru/wallpapers/5/17/293758380766135/kot-mejn-kun-ryzhij-pushistyj.jpg"),
    News(
        title: "Новость 1",
        text: "Какой-то текст 1",
        id: "1",
        photoURL: "https://w-dog.ru/wallpapers/5/17/293758380766135/kot-mejn-kun-ryzhij-pushistyj.jpg"),
    News(
        title: "Новость 1",
        text: "Какой-то текст 1",
        id: "1",
        photoURL: "https://w-dog.ru/wallpapers/5/17/293758380766135/kot-mejn-kun-ryzhij-pushistyj.jpg"),
];
