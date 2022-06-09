import 'package:flutter/material.dart';
import 'package:lesson_7/UI/widgets/menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  const MyScaffold({Key? key, this.title = 'Заголовок', required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        // body: Center(child: SingleChildScrollView(child: Text(myString,
        //   style: TextStyle(fontSize: 24),)),),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Expanded(
                flex: 3,
                child: body),
            buildMenu(context, width: width*0.2)
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        drawerEdgeDragWidth: width * 0.7,
        endDrawer: buildMenu(context, width: width * 0.7),
        body: body,
      );
    }
  }

}