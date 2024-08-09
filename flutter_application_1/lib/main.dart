import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculate_bmi(),
    );
  }

}