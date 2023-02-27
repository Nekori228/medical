import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../repositories/models/main_models.dart';
import '../repositories/page_repositories.dart';
import '../wigets/splash_screen/splash_screen.dart';

class AnalizMain extends StatefulWidget {
  const AnalizMain({Key? key}) : super(key: key);

  @override
  State<AnalizMain> createState() => _AnalizMainState();
}

class _AnalizMainState extends State<AnalizMain> {
  List<MainModels>? _MainModelsList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          toolbarHeight: 60.0,
          title: TextField(
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
                borderSide:
                BorderSide(color: Color(0xFFEBEBEB), width: 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Искать анализы',
              hintStyle: TextStyle(
                  fontSize: 15, color: Colors.black.withOpacity(0.5)),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.2),
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xFF7E7E9A),
              ),
            ),
          ),
        ),
        // body: (_MainModelsList == null)
        //     ? const SizedBox()
        //     : ListView.separated(
        //         itemCount: _MainModelsList!.length,
        //         separatorBuilder: (context, index) => const Divider(),
        //         itemBuilder: (context, i) {
        //           final coin = _MainModelsList![i];
        //           final coinName = coin.name;
        //           return MainTile(coin: coin);
        //         }),
        body:
        SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            child: Column(
              children: [
                Text(
                  'Акции и новости',
                  style: TextStyle(
                      color: Color(0xFF939396),
                      fontFamily: "Caption",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                Text(
                  'Каталог анализов',
                  style: TextStyle(
                      color: Color(0xFF939396),
                      fontFamily: "Caption",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) =>
                                    new SplashScreen()));
                              },
                              clipBehavior: Clip.antiAlias,
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xFF1A6FEE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                                  child: Text(
                                    'Популярное',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: "Caption",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ))),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: ElevatedButton(
                              onPressed: () {},
                              clipBehavior: Clip.antiAlias,
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xFFF5F5F9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                                child: Text(
                                  'Covid',
                                  style: TextStyle(
                                      color: Color(0xFF7E7E9A),
                                      fontFamily: "Caption",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {},
                            clipBehavior: Clip.antiAlias,
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(0xFFF5F5F9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              child: Text(
                                'Комплексные',
                                style: TextStyle(
                                    color: Color(0xFF7E7E9A),
                                    fontFamily: "Caption",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance_outlined),
          onPressed: () async {
            _MainModelsList = await MainRepository().getCoinsList();
            setState(() {});
          },
        ),
      ),
    );
  }
}

class MainTile extends StatelessWidget {
  const MainTile({
    super.key,
    required this.coin,
  });

  final MainModels coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      // leading: Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        '${coin.description} \$',
        style: TextStyle(color: Colors.black),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin,
        );
      },
    );
  }
}