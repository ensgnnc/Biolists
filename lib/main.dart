import 'package:flutter/material.dart';
import 'package:ecolists/screens/HomeScreen.dart';

//? Developed by Rinq (Enis Günenç)
//? 23.04.2022

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int getWidht = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
      body: HomeScreen(
        width: getWidht,
      ),
    );
  }
}
