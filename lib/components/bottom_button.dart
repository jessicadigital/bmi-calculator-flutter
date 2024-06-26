import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;

  BottomButton({
    required String this.buttonTitle,
    required VoidCallback this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle.toUpperCase(),
            style: kLargeButtonTextSize,
          ),
        ),
      ),
    );
  }
}
