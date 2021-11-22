import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanggraloka_ta/model/space.dart';

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpace() async {
    var result = await http
        .get(Uri.parse('https://raflianwar.github.io/MALmockJson/resortData.json'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}