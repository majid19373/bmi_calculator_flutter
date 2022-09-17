import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          brightness: Brightness.light,
          primary: const Color(0xFF101639),
        ),
        scaffoldBackgroundColor: const Color(0xFF101639),
        sliderTheme: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 15.0
            ),
            overlayShape: const RoundSliderOverlayShape(
                overlayRadius: 30.0
            ),
            thumbColor: const Color(0xFFFF0067),
            activeTrackColor: Colors.white,
            overlayColor: const Color(0x29FF0067),
            inactiveTrackColor: const Color(0xFF8D8E98)
        ),
      ),
      home: InputPage(),
    );
  }
}

