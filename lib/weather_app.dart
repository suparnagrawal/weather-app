import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_app/forecast_card.dart';
import 'package:weather_app/location.dart';
import 'package:weather_app/main_weather_widget.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Weather App',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.refresh))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Location(),
                SizedBox(height: 10,),
                MainWeatherWidget(),
                SizedBox(height: 10,),
                Text('Forecast',style: TextStyle(fontSize: 32),),
                SizedBox(height: 5,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ForecastCard(),
                      ForecastCard(),
                      ForecastCard(),
                      ForecastCard(),
                      ForecastCard(),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}