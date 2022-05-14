import 'package:flutter/material.dart';

// 앱을 실행시켜주세요.
void main() {
  runApp( MaterialApp(
      home: MyApp()
  )
  );
}


// var a = SizedBox(
//   child: Text('안녕')
// );


// 기본으로 채워져야 하는 문법
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['lea', 'jin', 'jun'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {

    // Text : Text('안녕')'
    // Icon : Icon.star
    // Image : Image.assets('경로')
    // Container,SizedBox(), LP단위

    return Scaffold(
        appBar: AppBar(title: Text('연락처앱'),),
        bottomNavigationBar: BottomAppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i){
            return ListTile(
              leading: Image.asset('image0.png'),
              title: Text(name[i]),
              );
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showDialog(context: context, builder: (context) {
            return DialogUI();
          });
      },
      ),

      );
  }
}



class DialogUI extends StatelessWidget {
  const DialogUI({key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column (
          children: [
            TextField(),
            TextButton( child: Text('완료'), onPressed: (){}),
            TextButton(
              child: Text('취소'),
              onPressed: () { Navigator.pop9context); })
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


