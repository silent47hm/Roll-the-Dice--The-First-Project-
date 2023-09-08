import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}



class _DiceRollerState extends State<DiceRoller>{

  var activeDiceImage = "assets/dice-3.png";
  void rollDice(){
   var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/dice-$diceRoll.png';
    });
  }
void specialRollDice(){

    setState(() {
      activeDiceImage = 'assets/dice-7.png';
    });
  }
  
  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
           activeDiceImage,
            width: 200,
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onLongPress:specialRollDice,
             
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20,),
                  foregroundColor: Colors.white,textStyle: TextStyle(fontSize: 28)),
              child: const Text('Roll Dice'))
        ],
      );
  }
}