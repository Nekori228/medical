import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () => Navigator.pushNamed(context, '/createcard'),
                  child: Text(
                    "Пропустить",
                    style: TextStyle(
                        color: Color(0xFF1A6FEE),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Caption",
                        fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Text(
                  "Создайте пароль",
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Caption",
                      fontSize: 24),
                ),
              ),
              Text(
                "Для защиты ваших персональных данный",
                style: TextStyle(
                    color: Color(0xFF939396),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Caption",
                    fontSize: 15),
              ),
              Spacer(),
              Image.asset("assets/image/progress.png"),
              Spacer(),
              Image.asset("assets/image/keyboard.png")
            ],
          ),
        ),
      ),
    );
  }
}
