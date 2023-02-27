import 'package:flutter/material.dart';

import '../app_bar.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: appBarMedical2(),
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("assets/image/ready_order.png"),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "Ваш заказ успешно оплачен!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF00B712),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Caption"),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "Вам осталось дождаться приезда медсесты\nи сдать анализы. До скорой встречи!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF939396),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Caption"),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "Не забудьте лзнакомиться с правилами подготовки к сдаче анализов",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF939396),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Caption"),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF1A6FEE), width: 1),
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () => Navigator.pushNamed(context, '/codeinemail'),
              child: Container(
                margin: EdgeInsets.fromLTRB(120, 20, 120, 20),
                child: Text(
                  'Чек покупки',
                  style: TextStyle(
                      color: Color(0xFF1A6FEE),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Caption"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A6FEE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => Navigator.pushNamed(context, '/codeinemail'),
                child: Container(
                  margin: EdgeInsets.fromLTRB(120, 20, 120, 20),
                  child: Text(
                    'На главную',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Caption"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
