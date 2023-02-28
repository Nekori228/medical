import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateCard extends StatelessWidget {
  CreateCard({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final List<String> genderItems = [
    'Мужской',
    'Женский',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "Создание карты\nпациента",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Caption",
                        fontSize: 24),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () => Navigator.pushNamed(context, '/mainpage'),
                  child: Text(
                    "Пропустить",
                    style: TextStyle(
                        color: Color(0xFF1A6FEE),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Caption",
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Без карты пациента вы не сможете заказать анализы.",
                  style: TextStyle(
                      color: Color(0xFF939396),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Caption",
                      fontSize: 13),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "В картах пациентов будут храниться результаты\nанализов вас и ваших близких.",
                  style: TextStyle(
                      color: Color(0xFF939396),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Caption",
                      fontSize: 14),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
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
                    hintText: 'Имя',
                    hintStyle: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.5)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
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
                    hintText: 'Отчество',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF939396)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
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
                    hintText: 'Фамилия',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF939396)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
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
                    hintText: 'Дата рождения',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF939396)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: DropdownButtonFormField2(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFEBEBEB), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Дата рождения',
                          hintStyle:
                          TextStyle(fontSize: 15, color: Color(0xFF939396)),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Пол',
                          style: TextStyle(fontSize: 16),
                        ),
                        icon: const Icon(
                          Icons.expand_more,
                          color: Colors.black45,
                        ),
                        iconSize: 20,
                        buttonHeight: 20,
                        buttonPadding:
                            const EdgeInsets.only(left: 0, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: genderItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Пожалуйста выберите оборудование.';
                          }
                        },
                        onChanged: (value) {
                          //Do something when changing the item if you want.
                        },
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                      ),
                    ),
                  ],
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
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Center(
                  child: Text(
                    'Создать',
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
      )),
    );
  }
}
