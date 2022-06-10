import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String title;
  final String text;
  final String photoURL;
  final String id;

  const NewsWidget(
      {Key? key,
      this.title = "Заголовок",
      this.text = "текс",
      this.photoURL = "",
      this.id = "01nn"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1.2),
      borderRadius: BorderRadius.circular(20)
    ),
      child: Column(
        children: [
          Text(title),
          Expanded(child: Card(child: Text('тут будет фото'),)),
          Text(text),
        ],
      ),
    );
  }
}
