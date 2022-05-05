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
    // Container,SizedBox(), LP단위

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( actions : [Icon(Icons.star)], title: Text('ddd')),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset('image0.png', width: 150,),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('카메라팝니다', style: TextStyle(),),
                    Text('금호동 3가'),
                    Text('7000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4'),
                      ],
                    )
                  ]
                )
              )
            ]
          ),
        )

      ),
    );
  }
}
