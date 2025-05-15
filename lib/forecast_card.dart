import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  const ForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: SizedBox(
        height: 120,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 5,
            children: [
              Text('info',style: TextStyle(fontSize: 16),),
              Icon(Icons.cloud,size: 40,),
              Text('info'),
            ],
          ),
        )),
    );
  }
}