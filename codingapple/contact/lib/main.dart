import 'package:flutter/material.dart';

// 앱을 실행시켜주세요.
void main() {
  runApp(MyApp());
}


// var a = SizedBox(
//   child: Text('안녕')
// );

// 기본으로 채워져야 하는 문법
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var a = 1;

  @override
  Widget build(BuildContext context) {

    // Text : Text('안녕')'
    // Icon : Icon.star
    // Image : Image.assets('경로')
    // Container,SizedBox(), LP단위

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            print(a);
            //버튼 누를 때마다 실행
            a++;
          },
        ),
        appBar: AppBar(),
        bottomNavigationBar: BottomAppBar(),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i){
            print(i);
            return ListTile(
              leading: Image.asset('image0.png'),
              title: Text('홍길동'),
            );
          },
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


