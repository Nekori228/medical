import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'models/main_models_news.dart';

class MainRepositoryNews {
  Future getCoinsListNews() async {
    final response = await Dio().get("https://medic.madskill.ru/api/news");
    debugPrint(response.toString());
    final data = response.data;
    final dataList = [];
    for (var i = 0; i < data.length; i++) {
      dataList.add(MainModelsNews(
        name: data[i]["name"],
        description: data[i]["description"],
        price: data[i]["price"],
        image: data[i]["image"],
      ));
    }
    return dataList;
  }
}
