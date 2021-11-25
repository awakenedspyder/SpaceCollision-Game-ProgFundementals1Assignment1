Name : Gowriswarup Kailas Perumal
Student Number: 20087165
Programme Name: SpaceCollision game

Brief description of the animation achieved: This is a game, the objective of which is to navigate the spaceship along its journey and to avoid the incoming space debris for as long as possible.

Basic Instructions:
(i) Press UP arrow key to move spaceship upwards. This motion continues until the body touches the top edge.
(ii) Press DOWN arrow key to move spaceship downwards. This motion continues until the body touches the bottom edge.
(iii) Press any key to hold the spaceship in its position.
(iv) The objective of this game is to avoid collision with the space debris (obstacles). The longer you manage to avoid being hit,
     the higher you score.
(v)  You are allotted with 10 lives. Each hit results in the loss of one life. When all 10 lives are lost, a "GAME OVER" Message screen will be displayed.
(vi) Game can be reset to beginning at any stage by clicking the mouse anywhere in the screen. This also restarts the score count. However,
     High Score count remains same until game is stopped.

Other remarks:

(i) Obstacles reset position when hit. This avoids multiple hits on the same collision, and helps improve the randomness of the obstacles.
(ii) When all lives are exhausted, screen is set to a "Game Over" page, which can be clicked on to reset game variables and setup, 
     excluding the High score count. The mouseclick can also reset game values at any point during the gameplay.

Known bugs/problems: 
(i) Even though the "Game over" screen loads when player loses all 10 lives, the game continues in the background, resulting in a return to
    the game screen as soon as lives remaining gets a value of '-1'. This has been overcome by programming the "Game Over screen to load for
    0 and every value less than 0.
(ii) Even then, the program glitched at the "Game Over" screen every time an obstacle hit the spaceship in the background. This issue was 
     solved by setting the frameRate value to 0.1, which sets the game to a virtual pause, since each frame takes a long time to load. This,
     however, slows down the rate at which the MouseClick for the game restart functions, but as soon as that command is executed, the game 
     resumes at its optimal speed.

Any sources referred to during the development of the assignment (no need to reference lecture/lab materials): nil.