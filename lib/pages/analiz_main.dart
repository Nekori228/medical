import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/pages/test_page.dart';

import '../repositories/models/main_models.dart';
import '../repositories/page_catalog.dart';
import '../wigets/splash_screen/splash_screen.dart';

class AnalizMain extends StatefulWidget {
  const AnalizMain({Key? key}) : super(key: key);

  @override
  State<AnalizMain> createState() => _AnalizMainState();
}

class _AnalizMainState extends State<AnalizMain> {
  dynamic _MainModelsList = [];
  dynamic _MainRepositoryNews = [];

  void getListModels() async {
    _MainModelsList = await MainRepository().getCoinsList();
    _MainRepositoryNews = await MainRepository().getCoinsList();
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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          toolbarHeight: 60.0,
          title: TextField(
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFEBEBEB), width: 2.0),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFEBEBEB), width: 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Искать анализы',
              hintStyle:
                  TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.2),
              suffixIcon: const Icon(
                Icons.search,
                color: Color(0xFF7E7E9A),
              ),
            ),
          ),
        ),
        body: _MainModelsList == null || _MainModelsList.length == 0
            ? SafeArea(
                child: Center(
                  child: const CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    strokeWidth: 6,
                  ),
                ),
              )
            : Column(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                          itemCount: _MainModelsList.length + 1,
                          separatorBuilder: (context, index) => const Divider(),
                          itemBuilder: (context, i) {
                            if (i == 0) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.04),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Акции и новости',
                                          style: TextStyle(
                                              color: Color(0xFF939396),
                                              fontFamily: "Caption",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Каталог анализов',
                                          style: TextStyle(
                                              color: Color(0xFF939396),
                                              fontFamily: "Caption",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 20, 0, 20),
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: ElevatedButton(
                                                  onPressed: () => Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              AnalizMainTest())),
                                                  clipBehavior: Clip.antiAlias,
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    backgroundColor:
                                                        Color(0xFF1A6FEE),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        10, 15, 10, 15),
                                                    child: Text(
                                                      'Популярное',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          fontFamily: "Caption",
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  clipBehavior: Clip.antiAlias,
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    backgroundColor:
                                                        Color(0xFFF5F5F9),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        10, 15, 10, 15),
                                                    child: Text(
                                                      'Covid',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF7E7E9A),
                                                          fontFamily: "Caption",
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  clipBehavior: Clip.antiAlias,
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    backgroundColor:
                                                        Color(0xFFF5F5F9),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        10, 15, 10, 15),
                                                    child: Text(
                                                      'Комплексные',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF7E7E9A),
                                                          fontFamily: "Caption",
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.04),
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
                                child: ListTile(
                                  title: Text(
                                    _MainModelsList![i - 1].name,
                                    style: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontFamily: "Caption",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              _MainModelsList![i - 1]
                                                  .time_result,
                                              style: const TextStyle(
                                                  color: Color(0xFF939396),
                                                  fontFamily: "Caption",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              '${_MainModelsList![i - 1].price} \₽',
                                              style: const TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontFamily: "Caption",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new SplashScreen()));
                                          ;
                                        },
                                        clipBehavior: Clip.antiAlias,
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Color(0xFF1A6FEE),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              15, 10, 15, 10),
                                          child: Text(
                                            'Добавить',
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontFamily: "Caption",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                              );
                            }
                          }),
                    ),
                  ),
                ],
              ),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.account_balance_outlined),
        //   onPressed: () async {
        //     _MainModelsList = await MainRepository().getCoinsList();
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
