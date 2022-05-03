import 'package:flutter/material.dart';

// 앱을 실행시켜주세요.
void main() {
  runApp(const MyApp());
}

// 기본으로 채워져야 하는 문법
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Text : Text('안녕')'
    // Icon : Icon.star
    // Image : Image.assets('경로')
    // Container,SizdBox(), LP단위

    return MaterialApp(
      home: Center( //부모
        child: Container( width: 50, height: 50, color: Colors.blue) //자식
      )
    );
  }

}
