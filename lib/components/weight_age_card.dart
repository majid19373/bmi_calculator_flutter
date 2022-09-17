import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeCard extends StatefulWidget {

  final String text;
  int stateParams;

  WeightAgeCard({required this.text, required this.stateParams});

  @override
  State<WeightAgeCard> createState() => _WeightAgeCardState();
}

class _WeightAgeCardState extends State<WeightAgeCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: kLabelTextStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.stateParams.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    widget.stateParams--;
                  });
                }),
            RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    widget.stateParams++;
                  });
                }),
          ],
        ),
      ],
    );
  }
}
