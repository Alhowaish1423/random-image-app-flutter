import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';


const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;



// statelesswidget and statfullwidget -- use statefulleidget if you are changing any thing in UI during exQtion like chaning the image after clicking the button
class GradientContainer extends StatelessWidget {
  // step 1 this.varabel name  ...
  const GradientContainer(this.color1, this.color2, {super.key});

// step 2 final- datatype - varable name
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: const Center(
        // the child acseptes only one widget - so we add the Colume or row widget assighn it to child widget ,
        // so that we can add more widget

        // the diceroller form another class ,, so, we have to imoport it 
        child: DiceRoller(),
      ),
    );
  }
}

