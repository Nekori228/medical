import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'models/main_models.dart';

class MainRepository {
  Future<List<MainModels>> getCoinsList() async {
    final response = await Dio().get("https://medic.madskill.ru/api/catalog");
    debugPrint(response.toString());
    final data = response.data as Map<String, dynamic>;
    final dataList = data.entries.map(
      (e) => MainModels(
          name: e.key,
          description: (e.value as Map<String, dynamic>)["description"],
      ))
    .toList();
    return dataList;
  }
}