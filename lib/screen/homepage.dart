// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_view_app/model/weather_data.dart';

var dayinfo = DateTime.now();
var dateformat = DateFormat('EEEE, d MMM , yyyy').format(dayinfo);

class MyHomePage extends StatelessWidget {
  var client = WeatherData();

  var data;

  info() async {
    // var position = await getPosition();
    data = await client.getData('24.87', '-67.05');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
            future: info(),
            builder: (context, Snapshot) {
              Text(
                " ${data?.windDirection} ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.normal,
                ),
              );
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.75,
                      width: size.width,
                      padding: const EdgeInsets.only(top: 20),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1E88E5), // Light blue
                            Color(0xFFFFEB3B), // Yellow
                          ],

                          begin: Alignment
                              .topLeft, // Adjusted gradient start point
                          end: Alignment
                              .bottomRight, // Adjusted gradient end point
                          stops: [0.3, 0.7], // Adjusted gradient stops
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "${data?.cityName}",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 45,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            dateformat,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 15,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          Image.network(
                            "https:${data?.icon}",
                            width: size.width * 0.36,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${data?.condition}",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 45,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${data?.temperature} *",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 65,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/humidity.png",
                                      width: size.width * 0.15,
                                    ),
                                    Text(
                                      "${data?.wind} km/h",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 20,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Wind",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 15,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/wind.png",
                                      width: size.width * 0.15,
                                    ),
                                    Text(
                                      "${data?.humidity} ",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 20,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Humidity*",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 15,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/Storm.png",
                                      width: size.width * 0.15,
                                    ),
                                    Text(
                                      " ${data?.windDirection} ",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 20,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "With Direction",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 15,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Gust",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 17,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " ${data?.gust} ",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Pressure",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 17,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " ${data?.pressure} ",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "uv",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 17,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " ${data?.uv} ",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Pecipidation",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 17,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " ${data?.priciness} ",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              "Wind",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 17,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${data?.wind} ",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Last Updated",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 17,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " ${data?.lastUpdate} ",
                              style: TextStyle(
                                color: Colors.greenAccent.withOpacity(0.4),
                                fontSize: 15,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
