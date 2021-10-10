import 'package:flutter/material.dart';

class ButtonRefresh extends StatelessWidget {

  final Function() onPress;

  ButtonRefresh({ required this.onPress });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Material(
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text("Refresh",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}