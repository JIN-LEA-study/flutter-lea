
<h3><b> My first Flutter study and project </b> </h3>

project 1, 연락처앱 만들기

<b>Flutter todo list</b>

- [o] Flutter 개발 환경 세팅
- [o] Flutter 기본 위젯 (Text, Icon, Image, container)
- [o] Flutter layout (Scaffold)
- [o] Flutter Box Design (margin, padding)
- [o] Flutter Typograghy, Layout
- [o] Expanded, Flexible, Layout
- [o] ListView(), how to make widget



<b>Flutter Grammar</b>

- void main() 은 앱을 실행하는 코드
- class Myapp extends 부분은 기본적으로 채워져야 하는 코드
- 기본 위젯 문법 : Text, Icon, Image, Container(SizedBox)
- 부모(기준) 안에 child(자식) 넣어 코드 작성
- MaterialApp() : 위젯, 구글이 제공하는 테마 이용 가능
- Cupertino : apple style 테마 사용 가능
- Scaffold() : 상중하로 나눠주는 위젯. AppBar()/Container()/BottomAppBar()
- Row(children:[]) : 오른쪽으로 나열, 리스트 형태로 코드 작성
- Column(children:[]) : 세로 정렬
- MainAxisAlignment.center : 가운데 정렬
- AppBer (title: Text)
- SizedBox (가벼움) width/height/child만 필요할 경우, Container(무거움)
- EdgeInsets.all(20) : 마진, 패딩 주는 방법
- EdgeInsets.fromLTRB : Left, Top, Right, Bottom
- Align(alignment: ) : 가운데 정렬
- width: double.infinity (무한으로 채워줌)
- 파라미터 끝나면 , 찍기! 그래야 다음 파라미터로 넘어감
- Color(0xffaaaaaa) : aaaaaa = color numbers
- Color.formRGBO(r, g, b, opacity)
- fontSize: , letterSpacing: , backgroundColor: 
- FontWeight.w700 : 폰트두께
- 레이아웃 잘 짜는 법 : 1. 예시디자인 준비 / 2. 예시 화면에 네모 그리기 / 3. 바깥 네모부터 하나하나 위젯으로 만들기
- 가로 박스 (Row), 세로 박스(Column)
- Flexible : 일정한 비율로 나눌 때 사용
- stless : 위젯 만드는 방법
- class형 문법: class? 변수+함수 보관함, build(){} : dart는 funtion없이 소괄호, 중괄호 만들면 함수형식
- @override : override 밑의 함수, 변수를 먼저 써달라는 코드
- 변수에 담아도 되는 것들 : 로고, 하단바, 상단바 (내용이 변함이 없는 것들)
- 실시간으로 변화하는 것들 : class 커스텀 위젯 만들기 (재사용이 많은 것들/ 큰 덩어리의 페이지들)
- ListView() : 긴 목록이 사용할 때 사용, 스크롤바 생김, 스크롤 위치 감시 가능, 메모리 절약 가능(성능개선)
- 반복문 ListView.builder( itemCount: , itemBuilder: (c, i)) 파라미터를 넣지 않으면 에러가 뜸
- 정수를 문자열로 변환해서 쓰고 싶을땐 toString()
- 출력하는 문법 : print(); console에 출력됨
- Button: child와 onPressed: () {}가 꼭 들어가야됨
- state를 쓰면 state변할 때마다 자동 재렌더링
- stful : state 만드는 법 1
- StatelessWidget -> StatefulWidget : state만드는 법 2
- setState(() { 변경내용 적기 })