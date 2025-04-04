import 'package:flutter/material.dart';

class LinhaWidget extends StatelessWidget {
  
  String title;
  LinhaWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.black,
          width: screenWidth * 0.1,
          height: 3,
        ),
        Text(
          this.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Container(
          color: Colors.black,
          width: screenWidth * 0.5,
          height: 3,
        ),
      ],
    );
  }
}
