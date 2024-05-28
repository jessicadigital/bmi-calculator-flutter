import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);
enum Gender {male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;

  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColour == inactiveCardColor) {
        maleCardColour = activeCardColor;
        femaleCardColour = inactiveCardColor;
      }
      else {
        maleCardColour = inactiveCardColor;
      }
    }
    else {
      if (femaleCardColour == inactiveCardColor) {
        maleCardColour = inactiveCardColor;
        femaleCardColour = activeCardColor;
      }
      else {
        femaleCardColour = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



