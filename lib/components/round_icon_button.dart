import 'package:flutter/material.dart';

class RoundIconButton  extends StatelessWidget {

  final VoidCallback onPressed;
  final IconData icon;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: const Color(0xFF212747),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}
