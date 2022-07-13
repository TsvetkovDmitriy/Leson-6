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
  TextEditingController phonNumberController = TextEditingController ();
  String? errorMessage;
  String phoneNumber = '';

  checkPhoneNumber () {
    if (phonNumberController.text.length >12) {
      errorMessage = 'Слишком длинный номер телефона';
    }
    else { if (phonNumberController.text.length <12) {
      errorMessage = 'Слишком короткий номер телефона';
    } else {
      errorMessage = null;
      codeWasSended = true;
      phoneNumber = phonNumberController.text;
      phonNumberController.text = '';
    }
    }
  }

  checkCode () {
    if (phonNumberController.text.length != 12) {
      errorMessage = 'Код должен быть из 6и символов';
    }
    else  {
      errorMessage = null;
      codeWasSended = true;
    }
  }

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
        TextFormField(controller: phonNumberController,
            decoration: InputDecoration( errorText: errorMessage,
          label: Text(codeWasSended? 'Введите полученный код' : 'Введите номер телефона')
        )),
        ElevatedButton(onPressed: () {
          if (codeWasSended) {
            checkCode ();
          } else {
          checkPhoneNumber();}
          setState(() {

          });

        }
            , child: Text(codeWasSended? "Войти" : 'Получить смс с кодом'))
      ],
    );
  }

}