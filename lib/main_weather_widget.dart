import 'package:flutter/material.dart';

class MainWeatherWidget extends StatelessWidget {
  const MainWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  spacing: 8,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.cloud,size: 80,),
                        Text('T K',style: TextStyle(fontSize: 64,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text('Cloudy',style: TextStyle(fontSize: 32),),
                    Text('T K / T K',style: TextStyle(fontSize: 16),),
                    Text('Real Feel: T K'),

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}