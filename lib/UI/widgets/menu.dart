import 'package:flutter/material.dart';
import 'package:lesson_7/UI/Theme/app_colors.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';
import 'package:lesson_7/UI/pages/fourth_page.dart';
import 'package:lesson_7/UI/pages/sekond_page.dart';
import 'package:lesson_7/UI/pages/third_page.dart';
import 'package:lesson_7/UI/widgets/my_scaffold.dart';

class MenuWidget extends StatelessWidget {
  final Function (int index) onListTileTab;
  final double width;
  const MenuWidget(this.onListTileTab, {Key? key, this.width = 200}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: AppColors.mainDarkBlue4,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text("Новости"),
            onTap: () {
              onListTileTab(0);
              if (Scaffold.of(context).isEndDrawerOpen) {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text("Карта"),
            onTap: () {
              onListTileTab(1);
              if (Scaffold.of(context).isEndDrawerOpen) {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text("Друзья"),
            onTap: () {
              onListTileTab(2);
              if (Scaffold.of(context).isEndDrawerOpen) {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text("Сообщения"),
            onTap: () {
              onListTileTab(3);
              if (Scaffold.of(context).isEndDrawerOpen) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}

// Widget buildMenu(BuildContext context, Function(int index) onListTileTab,
//     {width = 200}) {
//   return Container(
//     width: width,
//     color: AppColors.mainDarkBlue4,
//     child: Column(
//       children: [
//         SizedBox(
//           height: 50,
//         ),
//         ListTile(
//           title: Text("Новости"),
//           onTap: () {
//             onListTileTab(0);
//             if (Scaffold.of(context).isEndDrawerOpen) {
//               Navigator.pop(context);
//             }
//           },
//         ),
//         ListTile(
//           title: Text("Карта"),
//           onTap: () {
//             onListTileTab(1);
//             if (Scaffold.of(context).isEndDrawerOpen) {
//               Navigator.pop(context);
//             }
//           },
//         ),
//         ListTile(
//           title: Text("Друзья"),
//           onTap: () {
//             onListTileTab(2);
//             if (Scaffold.of(context).isEndDrawerOpen) {
//               Navigator.pop(context);
//             }
//           },
//         ),
//         ListTile(
//           title: Text("Сообщения"),
//           onTap: () {
//             onListTileTab(3);
//             if (Scaffold.of(context).isEndDrawerOpen) {
//               Navigator.pop(context);
//             }
//           },
//         ),
//       ],
//     ),
//   );
// }
