// ignore_for_file: non_constant_identifier_names

import "dart:math";
import 'package:flutter/material.dart';

class Zerek extends StatelessWidget 
{
  final int ZerekIdleSprite;
  final int ZerekMovedSprite;
  final int ZerekJumpSprite;
  final String ZerekDirection;
  final bool isIdle;
  final bool isMoving;
  final bool isJumping;

  const Zerek({
    Key? key, // Add Key? key parameter here
    required this.ZerekIdleSprite,
    required this.ZerekDirection,
    required this.ZerekMovedSprite,
    required this.ZerekJumpSprite, 
    required this.isIdle, 
    required this.isMoving, 
    required this.isJumping,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    if (ZerekDirection == 'right' && !isJumping && !isMoving) {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Idle_$ZerekIdleSprite.png'),
      );
    } 
    else if (ZerekDirection == 'left' && !isJumping && !isMoving) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Player_Animations/Zerek_Idle_$ZerekIdleSprite.png'),
        ),
      );
    } 

    else if (ZerekDirection == 'right' && !isJumping && !isIdle) 
    {
      return Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Player_Animations/Zerek_Move_$ZerekMovedSprite.png'),
        );
    }

     else if (ZerekDirection == 'left' && !isJumping && !isIdle) 
     {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Player_Animations/Zerek_Move_$ZerekMovedSprite.png'),
        ),
      );

    }

    else
      {
        return Container();
      }
}
}