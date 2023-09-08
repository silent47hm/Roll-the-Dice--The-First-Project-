import 'package:first_app/dice_rollar.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

   const GradientContainer.purple()
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  

  @override
  Widget build(context) {
    startAlignment = Alignment.center;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: DiceRoller(),
          // child: StyledText("Hello roll the dice")
          ),
    );
  }
}
