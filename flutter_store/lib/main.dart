import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(), // 상세한 것은 StorePage
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //첫번째로 Text를 담아야 한다.
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                // 네개의 메뉴 Text를 담기 위한 Row위젯
                children: [
                  Text(
                    "Woman",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Shoes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Bag",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/bag.jpeg",
                  fit: BoxFit.cover,
                )), //이름이 있는 생성자(Image클래스)
            SizedBox(
              height: 2,
            ),
            Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/cloth.jpeg",
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
