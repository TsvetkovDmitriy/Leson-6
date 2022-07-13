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
    return ListTile(
      title: Expanded(
      child: Container(
        width: width * 1,
        height: 300,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(width: 1.2),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(newNews.title),
            // ListTile(
            //   title:
              Expanded(
                  child: Card(
                child: Image.asset(newNews.photoURL, fit: BoxFit.fitWidth),
              )),
            //   onTap: () {
            //     Navigator.of(context).pushReplacement(
            //         MaterialPageRoute(builder: (BuildContext context) {
            //       return MyScaffold(body:
            //       Column(
            //         children: [
            //           Image.asset(newNews.photoURL, ),
            //           Text(newNews.text, ),
            //         ],
            //       ), title: newNews.title, );
            //     }));
            //   },
            // ),
            Text(newNews.text),
          ],
        ),
      ),
      ),
        onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
          return MyScaffold(body:
          Column(
            children: [
              Image.asset(newNews.photoURL, ),
              Text(newNews.text, ),
            ],
          ), title: newNews.title, );
        }));
      },
    );
  }
}
//ч
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
        photoURL: "assets/kat.jpg"),

    News(
        title: " Северное сияние в Нижнем Новгороде",
        text: " Жители Нижнего Новгорода наблюдали северное сияния над своим городом, учёные в шоке",
        id: "2",
        photoURL: "assets/polar.jpg"),
    News(
        title: "Новость 3",
        text: "Какой-то текст 3",
        id: "3",
        photoURL: "assets/photo1.jpg"),
    News(
        title: "Новость 4",
        text: "Какой-то текст 4",
        id: "4",
        photoURL: "assets/photo3.jpg"),
];
