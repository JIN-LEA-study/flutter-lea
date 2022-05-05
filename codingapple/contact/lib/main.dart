import 'package:flutter/material.dart';

// 앱을 실행시켜주세요.
void main() {
  runApp(const MyApp());
}


// var a = SizedBox(
//   child: Text('안녕')
// );

// 기본으로 채워져야 하는 문법
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Text : Text('안녕')'
    // Icon : Icon.star
    // Image : Image.assets('경로')
    // Container,SizedBox(), LP단위

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomAppBar(),
        body: ListView(
          children: [
            Text('안녕'),
            Text('안녕'),
            Text('안녕'),
            Text('안녕'),
            Text('안녕'),
            Text('안녕'),

          ],
        ),

      ),
    );
  }
}


// 위젯 만들기 1. 작명 2. return에 코드 넣기
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}


