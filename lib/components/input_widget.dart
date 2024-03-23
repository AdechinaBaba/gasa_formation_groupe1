import 'package:flutter/material.dart';
import '../theme/theme.dart';

class InputWidget extends StatelessWidget {

  String? text;

  InputWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$text",
            style: TextStyle(
              color: bleu,
              fontSize: 18
            ),
          ),
          SizedBox(height: 5,),
          TextFormField(
            decoration: InputDecoration(
              hintText: "$text",
              border: OutlineInputBorder()
            ),
          ),
        ],
      ),
    );
  }
}
