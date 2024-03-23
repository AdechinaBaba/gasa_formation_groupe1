import 'package:flutter/material.dart';
import '../theme/theme.dart';

class IconWidget extends StatelessWidget {

  IconData? icone;

  IconWidget({super.key, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: gris,
        borderRadius: BorderRadius.circular(10)
      ),
      child: IconButton(
        onPressed: () {
        },
        icon: Icon(icone),
      ),
    );
  }
}
