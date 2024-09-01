// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';

class WeatherModel {
  
  final String cityname;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String wethearcondition;

  WeatherModel({
    required this.cityname,
    required this.date,
    required this.image,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.wethearcondition,
  });

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
        cityname: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        wethearcondition: json['forecast']['forecastday'][0]['day']['condition']['text'],);
  }
}
