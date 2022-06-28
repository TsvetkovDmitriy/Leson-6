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
      height: 300,
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
                return MyScaffold(body:
                Column(
                  children: [
                    Image.network(newNews.photoURL),
                    Text(newNews.text, ),
                  ],
                ), title: newNews.title, );
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
        title: " Новость про рыжего кота",
        text: "«Кот-обжора» из Владивостока затмил крах рубля и планы Ходорковского",
        id: "1",
        photoURL: "https://w-dog.ru/wallpapers/5/17/293758380766135/kot-mejn-kun-ryzhij-pushistyj.jpg"),

    News(
        title: "Новость 2",
        text: "Какой-то текст 2",
        id: "2",
        photoURL: "https://w-dog.ru/wallpapers/0/7/475455960336780/2015-g-toyota-land-cruiser-200-jp-spec-tojota-lend-kruzer.jpg"),
    News(
        title: "Новость 3",
        text: "Какой-то текст 3",
        id: "3",
        photoURL: "https://w-dog.ru/wallpapers/1/10/491795334089654/zlobnyj-morda-cheshirskogo-kota.jpg"),
    News(
        title: "Новость 4",
        text: "Какой-то текст 4",
        id: "4",
        photoURL: "https://w-dog.ru/wallpapers/4/2/557594646386361/elli-xejz-krasotka-dozhd-nozhki-vzglyad-ulybka.jpg"),
];
