import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Onboard_all extends StatefulWidget {
  const Onboard_all({Key? key}) : super(key: key);

  @override
  State<Onboard_all> createState() => _Onboard_allState();
}

class _Onboard_allState extends State<Onboard_all> {
  void initState() {
    // TODO: implement initState
    super.initState();
    initialize();
  }

  void initialize() async {
    await Future.delayed(Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 140),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/signup'),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.black.withOpacity(0),
                      ),
                      child: Text(
                        'Пропустить',
                        style: TextStyle(
                            color: Color(0xFF57A9FF),
                            fontSize: 20,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child:
                        Image.asset("assets/image/plus.png", fit: BoxFit.cover),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 25), child: Carousel())
            ],
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    "assets/image/frame1.png",
    "assets/image/frame2.png",
    "assets/image/frame3.png",
  ];

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider2(images, pagePosition, active);
              }),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: indicators(images.length, activePage)),
        ),
        SizedBox(
          width: 400,
          height: 300,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              }),
        ),
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

AnimatedContainer slider2(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  List<String> text1 = [
    "Анализы",
    "Уведомления",
    "Мониторинг",
  ];

  List<String> text2 = [
    "Экспрес сбор и получения проб",
    "Вы быстиро узнаете о результатах",
    "Наши врачи всегда наблюдают\n за вашими покозателями здоровья",
  ];

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    child: Column(
      children: [
        Text(
          text1[pagePosition],
          style: TextStyle(
              color: Color(0xFF00B712),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Lato"),
        ),
        Spacer(),
        Text(
          text2[pagePosition],
          style: TextStyle(
              color: Color(0xFF939396),
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontFamily: "Caption"),
        ),
      ],
    ),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.blue : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
