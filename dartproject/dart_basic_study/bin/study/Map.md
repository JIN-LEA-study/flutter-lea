## Map

- Map : Key, Value pair (한쌍) 이뤄진 자료 구조
- dynamic : 여러 타입이 들어갈 경우
- Map 변수명 = {key:value,key:value};
- key값이 중복되면 안됨
- keys.toList() : key값이 출력
- values.toList() : key값이 출력
- length : 길이
- clear() : map을 빈 map으로 바꿈

```dart
void main() {
  Map<String, dynamic> joinInputForm = {
    'name' : 'lea',
    'age' : '31',
    'e-mail' : 'leaisrevolution@gmail.com',
    'bool' : true,
    'list' : [true, true, true, true],
  };
  print(joinInputForm['name']) //lea;
  print(joinInputForm.keys.toList()) //['name', 'age', 'e-mail', 'bool', 'list']
  print(joinInputForm.values.toList());
  print(joinInputForm.length); //4

  joinInputForm.clear();
  print(joinInputForm); // {}
}
```

```dart
void main() {
  Map map = {};
  print(map); //{}
  print(map['name']); //null

  // key 값이 없다? = 선언 insert

  map['name'] = 'Lea'; //할당
  print(map); //{name: Lea}
  print(map['name']); //Lea

  // key 값이 있다? = 할당 update

  map['name'] = '레아' //재할당
  print(map); // {name: 레아}
  print(map['name']); //레아

  // delete

  map.remove('name');
  print(map); //{}
  print(map['name'])' //null

}
```
