


import 'dart:convert';

import 'package:covidtracker/model/datamodel.dart';
import 'package:http/http.dart' as http;
import 'package:covidtracker/model/world_data.dart';

class ApiProvider {
  static String allUrl = "https://corona.lmao.ninja/all";


 static Future<WorldData> fetchallData() async {
    final response = await http.get(allUrl);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      print(
          "data from thw world is ${WorldData.fromJson(
              json.decode(response.body))}");
//      _worldController.add( WorldData.fromJson(json.decode(response.body)));
      return WorldData.fromJson(json.decode(response.body));
    }
  }


  static String indiaUrl = "https://corona.lmao.ninja/countries/India";
 static  Future<Data> fetchIndiaData() async {
    final response = await http.get(indiaUrl);
    // If the call to the server was successful, parse the JSON.
      print(
          "data from thw world is ${Data.fromJson(json.decode(response.body))}");
      return Data.fromJson(json.decode(response.body));

  }


}