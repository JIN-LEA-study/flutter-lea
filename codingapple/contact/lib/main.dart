import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

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

  // 패키지 연락처 권한 여부
  getPermission() async {
    var status = await Permission.contacts.status; //await 붙이면 다음 줄 실행 안하고 기다려줌
    if (status.isGranted) {
      print('허락됨');
      var contacts = await ContactsService.getContacts();
      print(contacts);
      name = contacts;
      // var newPerson = new Contact(); //new생략가능
      // newPerson.givenName = '민수';
      // newPerson.familyName = '김';
      // ContactsService.addContact(newPerson);


    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
      openAppSettings();
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   getPermission();
  //   // TODO : implement initState
  // }


  var total = 3;
  var name = ['lea', 'jin', 'jun'];
  var like = [0, 0, 0];

  addName(a) {
    setState(() {
      name.add(a);
    });
  }

  //list에 자료추가하는 법
  //완료 버튼 누르면 name에 유저가 입력한 자료 추가


  addOne(){
    setState(() {
      total++;
    });
  }


  @override
  Widget build(BuildContext context) {

    // Text : Text('안녕')'
    // Icon : Icon.star
    // Image : Image.assets('경로')
    // Container,SizedBox(), LP단위

    return Scaffold(
        appBar: AppBar(title: Text(total.toString()), actions: [
          IconButton(onPressed: (){getPermission();}, icon: Icon(Icons.contacts))
        ]),
        bottomNavigationBar: BottomAppBar(),
        body: ListView.builder(
          itemCount: name.length, //name 자료의 길이
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
            return DialogUI(addOne: addOne, addName: addName); // 자식위젯(작명: 보낼state)
          });
      },
      ),

      );
  }
}



class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.addOne, this.addName}) : super(key: key);
  final addOne;
  var inputData = TextEditingController();
  var inputData2 ='';
  final addName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column (
          children: [
            TextField(controller: inputData,),
            TextButton( child: Text('완료'), onPressed: (){addOne(); addName(inputData.text);}),
            TextButton(
              child: Text('취소'),
              onPressed: () { Navigator.pop(context); })
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


