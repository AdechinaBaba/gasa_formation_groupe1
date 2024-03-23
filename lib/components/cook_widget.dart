import 'package:flutter/material.dart';
import '../theme/theme.dart';

class CookWidget extends StatelessWidget {

  String? text, image;

  CookWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Image.asset("$image", height: 85, width: 110,),
        Text("$text",
          style: TextStyle(
              fontSize: 18,
              color: bleu
          ),
        ),
      ],
    );
  }
}
