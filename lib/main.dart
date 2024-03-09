// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, must_be_immutable, override_on_non_overriding_member, no_logic_in_create_state, library_private_types_in_public_api, unused_import, prefer_final_fields, avoid_print

import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Zerek extends StatelessWidget {
  final int zerekIdleSprite;
  final int zerekMovedSprite;
  final int zerekJumpSprite;
  final int zerekAttackedSprite;
  final int zerekHurtSprite;
  final int zerekTiredSprite;
  final String zerekDirection;
  final double zerekPosX;
  final double zerekPosY;
  final bool isIdle;
  final bool isHurt;
  final bool isMoving;
  final bool isJumping;
  final bool isDead;
  final bool isAttack;
  final bool isTired;
  final double health;
  final double specialAttack;
  final double stamina;

  const Zerek({
    Key? key,
    required this.zerekIdleSprite,
    required this.zerekDirection,
    required this.zerekMovedSprite,
    required this.zerekJumpSprite,
    required this.zerekTiredSprite,
    required this.zerekAttackedSprite,
    required this.zerekHurtSprite,
    required this.zerekPosX,
    required this.zerekPosY,
    required this.isIdle,
    required this.isHurt,
    required this.isMoving,
    required this.isDead,
    required this.isJumping,
    required this.isAttack,
    required this.isTired,
    required this.health,
    required this.specialAttack,
    required this.stamina,
  }) : super(key: key);

    @override
  Widget build(BuildContext context) 
  {
    if (zerekDirection == 'right' && isIdle) 
    {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Idle_$zerekIdleSprite.png'),
      );
    } 
    if (zerekDirection == 'left' && isIdle) 
    {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Player_Animations/Zerek_Idle_$zerekIdleSprite.png'),
        ),
      );
    } 

     if (zerekDirection == 'right' && isMoving) 
    {
      return Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Player_Animations/Zerek_Move_$zerekMovedSprite.png'),
        );
    }

     if (zerekDirection == 'left' && isMoving) 
     {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          child: Image.asset('lib/images/Player_Animations/Zerek_Move_$zerekMovedSprite.png'),
        ),
      );

    } 
    
     if (isAttack && zerekDirection == 'right') 
     {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Attack_$zerekAttackedSprite.png'),
      );
     }

     if (isAttack && zerekDirection == 'left') 
     {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Attack_$zerekAttackedSprite.png'),
      )
      );
     }

    if (isHurt && zerekDirection == 'right') 
     {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Hurt_$zerekHurtSprite.png'),
      );
     }

        if (isHurt && zerekDirection == 'left') 
     {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Hurt_$zerekHurtSprite.png'),
      )
      );
     }

     if (isTired && zerekDirection == 'right') 
     {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Tired_$zerekTiredSprite.png'),
      );
     }

     if (isTired && zerekDirection == 'left') 
     {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
        child: Image.asset('lib/images/Player_Animations/Zerek_Tired_$zerekTiredSprite.png'),
      )
      );
     }

    else {
      return Container();
    }
  }
}

class Zombie extends StatelessWidget {
  final int zombieSpriteCount;
  final String zombieDirection;
  final bool isAttacking;
  final int zAttackCount;
  final int zHurtCount;
  final bool zHurt;
  final int zHealth;
  const Zombie({
    Key? key,
    required this.zombieSpriteCount,
    required this.zombieDirection,
    required this.zAttackCount,
    required this.isAttacking,
    required this.zHurt,
    required this.zHurtCount,
    required this.zHealth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (zombieDirection == 'left' && !isAttacking) {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 200,
        width: 200,
        child: Image.asset('lib/images/Zombie_Animations/Zombie_Walk_$zombieSpriteCount.png'),
      );
    } 
    if (zombieDirection == 'right' && !isAttacking) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 200,
        width: 200,
          child: Image.asset('lib/images/Zombie_Animations/Zombie_Walk_$zombieSpriteCount.png'),
        ),
      );
    } 
     if (zombieDirection == 'left' && zHurt) {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 200,
        width: 200,
        child: Image.asset('lib/images/Zombie_Animations/Zombie_Hurt_1.png'),
      );
    } 

    if (zHurt && zombieDirection== 'right')
    {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 200,
        width: 200,
          child: Image.asset('lib/images/Zombie_Animations/Zombie_Hurt.png'),
        ),
      );
    }
    if (zombieDirection == 'left' && isAttacking) {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 200,
        width: 200,
        child: Image.asset('lib/images/Zombie_Animations/Zombie_Attack_$zAttackCount.png'),
      );
    } 
    if (zombieDirection == 'right' && isAttacking) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 200,
        width: 200,
          child: Image.asset('lib/images/Zombie_Animations/Zombie_Attack_$zAttackCount.png'),
        ),
      );
    }

    // Add a default return statement (empty container in this case)
    return Container();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  FocusNode _focusNode = FocusNode();
    @override
   void dispose()
    {
    // Dispose the FocusNode when the widget is disposed
    _focusNode.dispose();
    super.dispose();
  }

  // Instantiate Zombie
  int zombieSpriteCount = 1;
  int zAttackCount = 1;
  double zombiePosX = 0.5; //real is 0.5
  String zombieDirection = 'left';
  bool isAttacking = false;
  int skySpriteCount = 1;
  bool zHurt = false;
  int zHurtCount= 1;
  int zHealth = 70;

  // Instantiate Zerek
  int zerekIdleSprite = 1;
  int zerekTiredSprite = 1;
  double zerekPosX = 0;
  double zerekPosY = 1.05;
  String zerekDirection = 'right';
  int zerekAttackedSprite =1;
  int zerekHurtSprite = 1;
  int zerekMovedSprite = 1;
  bool isIdle = true;
  bool isMoving = false;
  bool isDead = false;
  bool isJumping =false;
  bool isAttack = false;
  bool isHurt = false;
  bool isTired = false;
  int zerekJumpSprite = 1;
  double zerekHealth = 100.0;
  double zerekSpecialAttack = 0.0;
  double zerekStamina = 100.0;

  bool isLeftButtonPressed = false;
  bool isJumpButtonPressed = false;
  bool isAttackButtonPressed = false;
  bool isRightButtonPressed = false;

  
  void startGame() {
    skyAnimate();
    moveZombie();
     updateZerekStats(); // Start updating Zerek's stats
     if (zerekHealth<=0)
     {
      deadScreen();
     }
     if (zHealth<=0)
     {
      //delete zombie;
     }

    _focusNode.requestFocus();
  }


  void updateZerekStats() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {

        if (isJumping) {
          zerekStamina-=10;
        }
        // Increase special attack over time (up to a maximum of 100)
        if (zerekSpecialAttack < 100) {
          zerekSpecialAttack += 1.0;
        }

        // If stamina is below a certain percentage, Zerek can't jump
        if (zerekStamina < 50) {
          isJumpButtonPressed = false;
          zerekTired();
        }

        // If stamina is above a certain percentage, Zerek can jump
        if (zerekStamina > 50) {
          isJumpButtonPressed = true;
          idleZerek();
        }

        if (isHurt)
        {
          zerekHealth-=5;
        }
      });
    });
  }

  // Function to move Zerek left
  void moveLeft() {
    setState(() {
      isMoving = true;
      isIdle = false;
      zerekDirection='left';
      zerekPosX -= 0.05;
      zerekMovedSprite++;

      if (zerekMovedSprite == 5) 
          {
            zerekMovedSprite = 1;
          }

    });
  }

  // Function to move Zerek right
  void moveRight() {
    setState(() {
      isMoving = true;
      isIdle = false;
      zerekDirection='right';
      zerekPosX += 0.05;
      zerekMovedSprite++;

       if (zerekMovedSprite == 5) 
          {
            zerekMovedSprite = 1;
          }

    });
  }

   // Function to make Zerek attack
  // Function to make Zerek attack
void zerekAttack() {
  Timer.periodic(Duration(milliseconds: 300), (timer) {
    setState(() {
      isMoving = false;
      isIdle = false;
      isJumping = false;
      isAttack = true;
      zerekAttackedSprite++;

      if (zerekAttackedSprite == 5) {
        zerekAttackedSprite = 1;
        isAttack = false;
        timer.cancel(); // Stop the timer
      }
    });

  });
  
}

void zerekTired() {
  Timer.periodic(Duration(milliseconds: 800), (timer) {
    setState(() {
      isMoving = false;
      isIdle = false;
      isJumping = false;
      isAttack = false;
      isTired = true;
      zerekTiredSprite++;

      if (zerekTiredSprite == 3) {
        zerekTiredSprite = 1;
        timer.cancel(); // Stop the timer
      }
    });
  });
}



  void jump() {
  double time = 0;
  double height = 0;
  double initialHeight = zerekPosY;

  Timer.periodic(Duration(milliseconds: 150), (timer) {
    time += 0.05;
    height -= 4.9 * time * time + 2.5 * time;

    setState(() {
      // Decrement stamina within the setState block
      zerekStamina -= 15;

      if (initialHeight - height > 0.5) {
        isJumping = true;
        isIdle = false;
        isMoving = false;
        zerekPosY = 0.1;
        timer.cancel();
        zerekJumpSprite = 1;
        isJumping = false;
        isIdle = true;
        isMoving = false;
      } else {
        zerekPosY = initialHeight - height;
        zerekJumpSprite = 2;
      }
    });
  });
}


void hurtZerek() {
  zerekHealth -15;
  Timer.periodic(Duration(milliseconds: 600), (timer) {
    setState(() {
      isHurt = true;
      isIdle = false;
      isJumping = false;
      isMoving = false;
      isAttack = false;
      print("$zerekHealth");
      zerekPosY = 1.05;
      zerekHurtSprite++;

      if (zerekHurtSprite == 4) {
        zerekHurtSprite = 1;
        isHurt = false;
        timer.cancel(); // Stop the tsimer
        //idleZerek();
      }
    });
  });
}


  void idleZerek() {
    Timer.periodic(Duration(milliseconds: 600), (timer) {
      setState(() {
        isIdle = true;
        isJumping = false;
        isTired=false;
          zerekPosY = 1.05;
          zerekIdleSprite++;
          double distance = (zerekPosX - zombiePosX).abs(); // Take the absolute value for distance
          if (distance < 0.05) { // Adjust the threshold as needed
            hurtZerek();
          }
          if (zerekIdleSprite == 5) 
          {
            zerekIdleSprite = 1;
          }

          if (zerekStamina <100)
          {
            zerekStamina++;
          }
          if (zerekHealth <= 0)
          {
            deadScreen();
          }
      });
    });
  }

 void deadScreen() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: const Color.fromARGB(195, 0, 0, 0), // Make dialog background transparent
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/Player_Animations/Dead_State.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: AlertDialog(
            title: Text("You have died."),
            content: Text("Zerek has fallen! Do you want to play again?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  startGame();
                },
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  // You may add additional actions or navigate to another screen
                },
                child: Text("No"),
              ),
            ],
          ),
        ),
      );
    },
  );
}

   void zombieHurt() {
        zHurt = true;
        isAttacking = false;
        zombiePosX-=0.05;
        zHurtCount++;
        print("Zombie hurt! $zHealth");
        print("Sprite is: $zHurtCount");
        if (zHurtCount == 2) {
          zHurtCount = 1;
          zHurt = false;  
        }
  }
   void moveZombie() {
    Timer.periodic(Duration(milliseconds: 150), (timer) {
      setState(() {
        if (!isAttacking) {
          zombieSpriteCount++;

          if (zombieDirection == 'left') {
            zombiePosX -= 0.05;
          } else {
            zombiePosX += 0.05;
          }

          // Check proximity and trigger attack if Zombie is close to Zerek
          double distance = (zerekPosX - zombiePosX).abs();
          if (distance < 0.5) {
            attackZombie();
          }

          if (zombiePosX < -1) {
            // Zombie reached left edge, stop and attack
            attackZombie();
            zombieDirection = 'right';
          } 
          if (zombiePosX > 1) {
            // Zombie reached right edge, stop and attack
            attackZombie();
            zombieDirection = 'left';
          }

          if (zombieSpriteCount == 5) {
            zombieSpriteCount = 1;
          }

        }
      });
    });
  }

  void attackZombie() {
    isAttacking = true; // Set isAttacking to true to trigger attack animation

    Timer.periodic(Duration(milliseconds: 150), (timer) {
      setState(() {
        zAttackCount++;

        if (zAttackCount == 5) {
          // Attack animation complete, reset variables
          zAttackCount = 1;
          isAttacking = false;
        }
      });
    });
  }

  void skyAnimate() {
    Timer.periodic(Duration(milliseconds: 300), (timer) {
      setState(() {
        skySpriteCount++;

        if (skySpriteCount == 6) {
          skySpriteCount = 1;
        }
      });
    });
  }

    bool onKey(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.keyA) {
        moveLeft();
        setState(() {
          isLeftButtonPressed = true;
        });
      } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
        moveRight();
        setState(() {
          isRightButtonPressed = true;
        });
      } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
        if (zerekStamina > 0) {
          jump();
          setState(() {
            isJumpButtonPressed = true;
          });
        }
      } else if (event.logicalKey == LogicalKeyboardKey.keyR) {
        zerekAttack();
        setState(() {
          isAttackButtonPressed = true;
        });
      }
    } else if (event is RawKeyUpEvent) {
      if (event.logicalKey == LogicalKeyboardKey.keyA) {
        setState(() {
          isLeftButtonPressed = false;
        });
      } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
        setState(() {
          isRightButtonPressed = false;
        });
      } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
        setState(() {
          isJumpButtonPressed = false;
        });
      } else if (event.logicalKey == LogicalKeyboardKey.keyR) {
        setState(() {
          isAttackButtonPressed = false;
        });
      }
    }
    return true; // Add this line to fix the return type
  }


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        // Background layer
        SizedBox(
          width: 1500,
          height: 1500,
          child: Image.asset(
            'lib/images/Level_Backgrounds/Apocalypse_$skySpriteCount.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Foreground layer with bars and game elements
        RawKeyboardListener(
          focusNode: _focusNode,
          onKey: onKey,
          child: Column(
            children: [
              // Display health, special attack, and stamina bars above the sky
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildStatBar("Health", zerekHealth),
                    SizedBox(width: 20),
                    buildStatBar("Special Attack", zerekSpecialAttack),
                    SizedBox(width: 20),
                    buildStatBar("Stamina", zerekStamina),
                  ],
                ),
              ),
             Expanded(
  child: Stack(
    children: [
      // Other game elements like characters (Zerek, Zombie) can be added here
      Container(
        alignment: Alignment(zombiePosX, 1.15),
        child: Zombie(
          zombieDirection: zombieDirection,
          zombieSpriteCount: zombieSpriteCount,
          zAttackCount: zAttackCount,
          isAttacking: isAttacking,
          zHurt: zHurt,
          zHurtCount: zHurtCount,
          zHealth: zHealth,
        ),
      ),
                    Container(
                      alignment: Alignment(zerekPosX, zerekPosY),
                      child: Zerek(
                        zerekDirection: zerekDirection,
                        zerekIdleSprite: zerekIdleSprite,
                        zerekJumpSprite: zerekJumpSprite,
                        zerekMovedSprite: zerekMovedSprite,
                        zerekAttackedSprite: zerekAttackedSprite,
                        zerekPosX: zerekPosX,
                        isIdle: isIdle,
                        isJumping: isJumping,
                        isMoving: isMoving,
                        zerekPosY: zerekPosY,
                        health: zerekHealth,
                        specialAttack: zerekSpecialAttack,
                        stamina: zerekStamina,
                        isAttack: isAttack,
                        isHurt: isHurt,
                        zerekHurtSprite: zerekHurtSprite, 
                        isTired: isTired,
                        zerekTiredSprite: zerekTiredSprite,
                        isDead: isDead,
                      ),
                    ),
                  ],
                ),
              ),
              // Other UI components like buttons can be added here
              Container(
                height: 5,
                color: const Color.fromARGB(255, 39, 99, 41),
              ),
              Container(
                height: 70,
                color: const Color.fromARGB(255, 61, 39, 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        moveLeft();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isLeftButtonPressed ? Colors.lightGreen : Colors.grey,
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (zerekStamina > 0) {
                          jump();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isJumpButtonPressed ? Colors.lightGreen : Colors.grey,
                      ),
                      child: Icon(Icons.arrow_upward),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        moveRight();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isRightButtonPressed ? Colors.lightGreen : Colors.grey,
                      ),
                      child: Icon(Icons.arrow_forward),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        startGame();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text('Play'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Logic for attack
                        zerekAttack();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 42, 27),
                      ),
                      child: Text('Attack'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Logic for special attack
                        if (zerekSpecialAttack >= 100) {
                          // Perform special attack
                          // ... (add your logic here)
                          // Reset special attack percentage
                          zerekSpecialAttack = 0;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 53, 180, 189),
                      ),
                      child: Text('Special'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]) 
  );
}

Widget buildStatBar(String label, double percentage) {
  return Column(
    children: [
      Text(
        label,
        style: TextStyle(color: Colors.white), // Set text color to white
      ),
      Container(
        width: 100,
        height: 10,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5),
        ),
        child: FractionallySizedBox(
          widthFactor: percentage / 100,
          child: Container(
            color: percentage < 30 ? Colors.red : Colors.green,
          ),
        ),
      ),
    ],
  );
}

}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
