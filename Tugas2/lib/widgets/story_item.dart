import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
              ),
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/120/100"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
