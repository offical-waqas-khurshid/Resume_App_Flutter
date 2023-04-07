import 'package:flutter/material.dart';
import 'package:resum_flutter/ui/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Umair Resume',
        debugShowCheckedModeBanner: false,
        home:  Scaffold(
            body:  Container(
              child:  MainPage(),
            )));
  }
}