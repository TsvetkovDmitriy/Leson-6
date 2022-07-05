import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool codeWasSended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Авторизация'),
        backgroundColor: AppColors.mainDarkBlue,
      ),
      body: body(context),

    );
  }

  Widget body (BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(decoration: InputDecoration(
          label: Text(codeWasSended? 'Введите полученный код' : 'Введите номер телефона')
        )),
        ElevatedButton(onPressed: () {
          setState(() {
            // codeWasSended = true;
            codeWasSended = !codeWasSended;
          });

        }
            , child: Text(codeWasSended? "Войти" : 'Получить смс с кодом'))
      ],
    );
  }

}