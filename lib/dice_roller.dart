import 'dart:math';
import 'package:flutter/material.dart';
// all statefulwidget must have 2 classes
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
  


}
// the under Score means privert 
class _DiceRollerState extends State<DiceRoller>{

  // must but the thing that will change during the exqution in the privit state class
  var randomaizedNumber = 1;

  void rollDice() {
    // random.nextint(max) will give a random number from 0 to max -1
    // see video num 50 to make it more effichent but more complixes
     randomaizedNumber = Random().nextInt(6) + 1;

    // setState are in state class and its job to chang the UI ( the image )
    setState(() {
      
      

    });
  
}


@override
  Widget build(context) {
    return Column(
          // make everything in center
          mainAxisSize: MainAxisSize.min,
          children: [
            // we can add a string insied a string by $varable name
            Image.asset('assets/pic/dice-$randomaizedNumber.png', width: 250),
          // to make a space between widgets ( a space btweent the image of the dice and the button ) you can mdifiy the hight
          //must be between 2 widget ( Image and TextButton) 
          // or by using padding (serch in googal or vied num 47)
          const SizedBox(height: 100),
          

            TextButton(
                onPressed: rollDice,
                // to style the button

                style: TextButton.styleFrom(
                    // foregroungcolor to chang the color of the button
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text('clikc here'))
          ],
          
        );
    
  }

}