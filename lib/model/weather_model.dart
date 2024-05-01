// ignore_for_file: prefer_typing_uninitialized_variables

class WeatherModel {
  var cityName;
  var icon;
  var condition;
  var temperature;
  var wind;
  var humidity;
  var windDirection;
  var gust;
  var uv;
  var pressure;
  var priciness;
  var lastUpdate;

  WeatherModel({
    required this.cityName,
    required this.icon,
    required this.condition,
    required this.temperature,
    required this.wind,
    required this.humidity,
    required this.windDirection,
    required this.gust,
    required this.uv,
    required this.pressure,
    required this.priciness,
    required this.lastUpdate,
  });

  WeatherModel.fromJSON(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    icon = json['current']['condition']['icon'];
    condition = json['current']['condition']['text'];
    temperature = json['current']['temp_c'];
    wind = json['current']['wind_kph'];
    humidity = json['current']['humidity'];
    windDirection = json['current']['wind_dir'];
    pressure = json['current']['pressure_mb'];
    priciness = json['current']['precip_mm'];
    lastUpdate = json['current']['last_updated'];
    gust = json['current']['gust_kph'];
    uv = json['current']['uv'];
  }
}
