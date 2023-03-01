import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/pages/test_page.dart';

import '../repositories/models/main_models.dart';
import '../repositories/page_catalog.dart';
import '../repositories/page_news.dart';
import '../wigets/splash_screen/splash_screen.dart';

class AnalizMainTest extends StatefulWidget {
  const AnalizMainTest({Key? key}) : super(key: key);

  @override
  State<AnalizMainTest> createState() => _AnalizMainTestState();
}

class _AnalizMainTestState extends State<AnalizMainTest> {
  dynamic _MainRepositoryNews = [];

  void getListModels() async {
    _MainRepositoryNews = await MainRepositoryNews().getCoinsListNews();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getListModels();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: SafeArea(
          child: ListView.separated(
              itemCount: _MainRepositoryNews.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  child: Column(
                    children: [
                      ListTile(
                        title: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFF4F4F4),
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    width: 400,
                                    height: 200,
                                    child: Image(
                                      image: NetworkImage(
                                          _MainRepositoryNews![i].image),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      _MainRepositoryNews![i].name,
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                        fontFamily: "Caption",
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      _MainRepositoryNews![i].description,
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: "Caption",
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '${_MainRepositoryNews![i].price} \₽',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                        fontFamily: "Caption",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
        // Container(
        //   width: 500,
        //   height: 300,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(100),
        //     ),
        //   ),
        //   child: Image(
        //     image: NetworkImage(_MainRepositoryNews![i].image),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.account_balance_outlined),
        //   onPressed: () async {
        //     _MainRepositoryNews = await MainRepository().getCoinsList();
        //     setState(() {});
        //   },
        // ),
      ),
    );
  }
}

// class MainTile extends StatelessWidget {
//   const MainTile({
//     super.key,
//     required this.coin,
//   });
//
//   final MainModels coin;
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return ListTile(
//       // leading: Image.network(coin.imageUrl),
//       title: Text(
//         coin.name,
//         style: TextStyle(color: Colors.black),
//       ),
//       subtitle: Text(
//         '${coin.description} \$',
//         style: TextStyle(color: Colors.black),
//       ),
//       trailing: const Icon(Icons.arrow_forward_ios),
//       onTap: () {
//         Navigator.of(context).pushNamed(
//           '/coin',
//           arguments: coin,
//         );
//       },
//     );
//   }
// }
