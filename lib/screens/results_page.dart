import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmiValue, required this.result, required this.interpretation});

  final String bmiValue;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 55.0),
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiValue,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBMIBodyStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
              onClick: (){
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
