import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: SingleChildScrollView(scrollDirection:Axis.horizontal,child: Text('Delhi',style: TextStyle(fontSize: 36),),),);
  }
}