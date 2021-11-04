import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            //4개의 아이템들이 나와야한다.. 얘네들이 보면 Container()라는 동그란 박스에 들어있다.
            _buildMenuItem(Icons.food_bank, "ALL"),
            SizedBox(
              width: 25,
            ),
            _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
            SizedBox(
              width: 25,
            ),
            _buildMenuItem(Icons.fastfood, "Burger"),
            SizedBox(
              width: 25,
            ),
            _buildMenuItem(Icons.local_pizza, "Pizza"),
            SizedBox(
              width: 25,
            ),
            _buildMenuItem(Icons.local_pizza, "Pizza"),
          ],
        ),
      ),
    );
  }

  Container _buildMenuItem(IconData mIcon, String text) {
    // Icon은 IconData타입, Text는 String 타입
    return Container(
      // Container는 어떤 특징이 있냐면 자식이 없는 Container는 가능한 가장 크게 그려진다. 라는 제약조건을 가진다.
      // Container를 감싸고 있는 것이 무엇이냐면 Row가 Container를 감싼다. 그러면 Container는 Row의 크기에 맞춰서 커진다.
      // Container에 자식을 들 수 있다면 Container는 자동으로 자식의 크기에 맞게 조정되는 특징이 있다.
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          SizedBox(height: 5),
          Text(text)
        ],
      ),
    );
  }
}
