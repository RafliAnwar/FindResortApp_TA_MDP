import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:sanggraloka_ta/model/site.dart';

class SiteProvider extends ChangeNotifier {
  getRecommendedSites() async {
    var result = await http.get(Uri.parse('https://raflianwar.github.io/MALmockJson/sitesData.json'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Site> sites = data.map((item) => Site.fromJson(item)).toList();
      return sites;
    } else {
      return <Site>[];
    }
  }
}
