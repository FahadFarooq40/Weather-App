import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_view_app/model/weather_model.dart';

class WeatherData {
  Future<WeatherModel> getData(var latiutde, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=7b3d7ece6bf04f6db9f43951240105&q=karachi&aqi=no');

    var response = await http.get(uriCall);

    var body = jsonDecode(response.body);
    return WeatherModel.fromJSON(body);
  }
}
