import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/weather_forecast.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print('Refresh');
              },
              icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Rain',
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  card(
                    time: '00.00',
                    icon: Icons.cloud,
                    temaparature: '301.17',
                  ),
                  card(
                    time: '03.00',
                    icon: Icons.sunny,
                    temaparature: '300.52',
                  ),
                  card(
                    time: '06.00',
                    icon: Icons.cloud,
                    temaparature: '302.22',
                  ),
                  card(
                    time: '09.00',
                    icon: Icons.sunny,
                    temaparature: '300.12',
                  ),
                  card(
                    time: '12.00',
                    icon: Icons.cloud,
                    temaparature: '304.12',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Additional_Info(
                        icon: Icons.water_drop,
                        label: 'Humidity',
                        value: '94',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Additional_Info(
                        icon: Icons.air,
                        label: 'Wind Speed',
                        value: '7.67',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Additional_Info(
                        icon: Icons.beach_access,
                        label: 'Pressure',
                        value: '1006',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
