import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPress;

  RoundIconButton(
      {required IconData this.iconData, required VoidCallback this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 0.0,
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
      shape: const CircleBorder(),
      child: Icon(iconData),
    );
  }
}
