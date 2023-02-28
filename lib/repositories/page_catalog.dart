import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'models/main_models.dart';

class MainRepository {
  Future getCoinsList() async {
    final response = await Dio().get("https://medic.madskill.ru/api/catalog");
    debugPrint(response.toString());
    final data = response.data;
    final dataList = [];
    for (var i=0; i < data.length; i++) {
      dataList.add(MainModels(
        name: data[i]["name"],
        description: data[i]["description"],
        price: data[i]["price"],
        time_result: data[i]["time_result"],
      ));

    }
    return dataList;
  }
}