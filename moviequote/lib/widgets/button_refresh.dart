import 'package:flutter/material.dart';

class ButtonRefresh extends StatelessWidget {

  final Function() onPress;

  ButtonRefresh({ required this.onPress });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        child: Text("Refresh",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}