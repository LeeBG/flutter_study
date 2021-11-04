import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20), //아래위로 Padding을 준다.
      child: Column(
        // 위에서 아래로 내려가는 구조 -> 사진 제목 설명 순
        crossAxisAlignment:
            CrossAxisAlignment.start, // 아이템 내부의 정렬을 전체적으로 좌측정렬한다.
        children: [
          AspectRatio(
            aspectRatio: 2 / 1, // 2 대 1 종횡비
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ), //생성자에 들어오는 이미지의 이름.jpeg를 찾을것이다.
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title you'll never go back.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
