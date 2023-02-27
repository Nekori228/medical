import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: [
                    Image.asset('assets/image/hello.png'),
                    Text(
                      'Добро пожаловать!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Caption",
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Text(
                  'Войдите, чтобы пользоваться функциями приложения',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Caption",
                      fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topLeft,
                    child: Text('Вход по E-mail')),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    cursorColor: Colors.grey,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFEBEBEB), width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'example@mail.ru',
                      hintStyle: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.5)),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A6FEE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => Navigator.pushNamed(context, '/codeinemail'),
                child: Container(
                  margin: EdgeInsets.fromLTRB(135, 20, 135, 20),
                  child: Text(
                    'Далее',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Caption"),
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text(
                  'Или войдите с помощью',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Caption",
                      fontSize: 15),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    side: BorderSide(color: Colors.grey),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(95, 20, 95, 20),
                  child: Text(
                    'Войти с Яндекс',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Caption"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
