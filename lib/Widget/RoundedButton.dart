import 'package:flutter/material.dart';

import '../Style/Style.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.textTitle, this.color});

  final Color color;
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: MaterialButton(
        height: size.height * 0.07,
        minWidth: size.width * 0.15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        onPressed: () {},
        color: color,
        child: Text(
          textTitle.toUpperCase(),
          style: ThemText.buttonText,
        ),
      ),
    );
  }
}
