import 'dart:math';
import 'package:flutter/material.dart';

class Zombie extends StatelessWidget 
{
  final int zombieSpriteCount;
  final String zombieDirection;
  final bool isAttacking;
  final int zAttackCount;

  const Zombie(
    {
      Key? key,
      required this.zombieSpriteCount,
      required this.zombieDirection,
      required this.zAttackCount,
      this.isAttacking = false,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    if (isAttacking) 
    {
      return _buildAttackAnimation();
    } 
    else 
    {
      return _buildWalkAnimation();
    }
  }

  Widget _buildWalkAnimation() 
  {
    if (zombieDirection == 'left') 
    {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Zombie_Animations/Zombie_Walk_$zombieSpriteCount.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Zombie_Animations/Zombie_Walk_$zombieSpriteCount.png'),
        ),
      );
    }
  }

  Widget _buildAttackAnimation() 
  {
    if (zombieDirection == 'left') 
    {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Zombie_Animations/Zombie_Attack_$zAttackCount.png'),
      );
    } 
    else 
    {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Zombie_Animations/Zombie_Attack_$zAttackCount.png'),
        ),
      );
    }
  }
}
