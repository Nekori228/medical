import 'package:flutter/material.dart';

class appBarMedical extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Color(0xFF939396)),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left,
            size: 32,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/createpassword'),
              child: Icon(
                Icons.arrow_circle_right_sharp,
                color: Colors.grey,
                size: 32,
              ),
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class appBarMedical2 extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Оплата',
        style: TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w600,
            fontFamily: "Caption",
            fontSize: 20),
      ),
      iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
