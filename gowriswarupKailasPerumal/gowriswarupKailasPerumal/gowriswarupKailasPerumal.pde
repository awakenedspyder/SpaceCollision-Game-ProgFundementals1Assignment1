/*
Name : Gowriswarup Kailas Perumal
Student Number: 20087165
Programme Name: SpaceCollision game
*/
void setup() {
     fullScreen();
     noStroke();
     frameRate(100);
}   
    
    
//Global variables
      
     float xAxis = 150;  //spaceship xAxis
     float yAxis = 450;  //spaceship yAxis
     float obstacle1xAxis = width;   
     float obstacle2xAxis = width+200;
     float obstacle3xAxis = width+350;   
     float obstacle4xAxis = width+430;
     float obstacle5xAxis = width+700;
     float obstacle6xAxis = width+100;
     float obstacle7xAxis = width+150;
     float obstacle8xAxis = width-300;
     float obstacle9xAxis = width-390;   
     float obstacle10xAxis = width+480;
     float obstacle11xAxis = width;
     float obstacle12xAxis = width-100;
     float obstacle13xAxis = width-280;
     float obstacle14xAxis = width-80;
     float obstacle15xAxis = width+90;
     int life=10;
     int score = 0;
     int highScore = 0;  
              
         
        
//Spaceship method
void spaceship() {
     background(0);
     fill(0,255,0);
     stroke(0,255,0);
       ellipse(xAxis, yAxis, 100, 30);                                   //Spaceship Main Body
       triangle(xAxis-45,yAxis-15,xAxis-80,yAxis-10,xAxis-45,yAxis-10);  //Spaceship base #1
       triangle(xAxis-45,yAxis+15,xAxis-80,yAxis+10,xAxis-45,yAxis+10);  //Spaceship base #2
     fill(227, 140, 45);
     stroke(227, 140, 45);
       triangle(xAxis-53,yAxis-7,xAxis-100,yAxis,xAxis-53,yAxis+7);     // Outer Orange Flame
     fill(255,0,0);
     stroke(255,0,0);
       triangle(xAxis-53,yAxis-5,xAxis-85,yAxis,xAxis-53,yAxis+5);      // Middle Red Fkame
     fill(255,150,80);
     stroke(255,150,80);
       triangle(xAxis-53,yAxis-1.5,xAxis-70,yAxis,xAxis-53,yAxis+1.5);  // Inner Flame
     fill(0,0,255);
     stroke(0,0,255);
       ellipse(xAxis+25,yAxis-1,14,10);                  //Blue Spaceship windows
       ellipse(xAxis,yAxis-1,14,10);
       ellipse(xAxis-25,yAxis-1,14,10);
     if (key == CODED) {
         if (keyCode == UP){   
             if (yAxis >20)  // spaceship reaches maximum height
             yAxis = yAxis - 7;
          }
         else if (keyCode == DOWN){
             if (yAxis < height-20)  // spaceship reaches maximum depth
             yAxis = yAxis + 7;
          }
     }
}    
     
//Obstacles method
void obstacles(){
     stroke(255,0,0);                                      //Outer Hot Red Flame of Space Debris
     fill(227, 140, 45);                                   //Inner Hot Orange Flame of Space Debris
     strokeWeight(2);
     ellipse(obstacle1xAxis, 100, 8,8); 
        if(obstacle1xAxis>=0) 
        obstacle1xAxis = obstacle1xAxis -3;
        else
        obstacle1xAxis = width;
     ellipse(obstacle2xAxis, 750, 8,8); 
        if(obstacle2xAxis>=0) 
        obstacle2xAxis = obstacle2xAxis -3;
        else
        obstacle2xAxis = width+200;
     ellipse(obstacle3xAxis, 250, 8,8); 
        if(obstacle3xAxis>=0) 
        obstacle3xAxis = obstacle3xAxis -3;
        else
        obstacle3xAxis = width+350;
     ellipse(obstacle4xAxis, 550, 8,8); 
        if(obstacle4xAxis>=0) 
        obstacle4xAxis = obstacle4xAxis -3;
        else
        obstacle4xAxis = width+430;
     ellipse(obstacle5xAxis, 500, 8,8); 
        if(obstacle5xAxis>=0) 
        obstacle5xAxis = obstacle5xAxis -3;
        else
        obstacle5xAxis = width+700;
     ellipse(obstacle6xAxis, 10, 8,8); 
        if(obstacle6xAxis>=0) 
        obstacle6xAxis = obstacle6xAxis -3;
        else
        obstacle6xAxis = width+100;
     ellipse(obstacle7xAxis, height-10, 8,8); 
        if(obstacle7xAxis>=0) 
        obstacle7xAxis = obstacle7xAxis -3;
        else
        obstacle7xAxis = width+150;
     ellipse(obstacle8xAxis, 50, 8,8); 
        if(obstacle8xAxis>=0) 
        obstacle8xAxis = obstacle8xAxis -3;
        else
        obstacle8xAxis = width-300;
     ellipse(obstacle9xAxis, 300, 8,8); 
        if(obstacle9xAxis>=0) 
        obstacle9xAxis = obstacle9xAxis -3;
        else
        obstacle9xAxis = width-390;
     ellipse(obstacle10xAxis, 350, 8,8); 
        if(obstacle10xAxis>=0) 
        obstacle10xAxis = obstacle10xAxis -3;
        else
        obstacle10xAxis = width+480;
     ellipse(obstacle11xAxis, 425, 8,8); 
        if(obstacle11xAxis>=0) 
        obstacle11xAxis = obstacle11xAxis -3;
        else
        obstacle11xAxis = width;
     ellipse(obstacle12xAxis, 625, 8,8); 
        if(obstacle12xAxis>=0) 
        obstacle12xAxis = obstacle12xAxis -3;
        else
        obstacle12xAxis = width-100;
     ellipse(obstacle13xAxis, 700, 8,8); 
        if(obstacle13xAxis>=0) 
        obstacle13xAxis = obstacle13xAxis -3;
        else
        obstacle13xAxis = width-280;
     ellipse(obstacle14xAxis, height-80, 8,8); 
        if(obstacle14xAxis>=0) 
        obstacle14xAxis = obstacle14xAxis -3;
        else
        obstacle14xAxis = width-80;
     ellipse(obstacle15xAxis, 440, 8,8); 
        if(obstacle15xAxis>=0) 
        obstacle15xAxis = obstacle15xAxis -3;
        else
        obstacle15xAxis = width+90;
}      
       
       
//Draw method
void draw(){
     spaceship();
     obstacles();
     fill(255);
     textSize(25);
     text("Score: "+score,width-250,25);
     text("High Score: "+highScore,width-600,25);
     score++;                           //Score keeps increasing till player loses all 10 lives.
     text("Lives Remaining: "+life,width-490,60);
     if ((obstacle1xAxis>=xAxis-50)&&(obstacle1xAxis<=xAxis+50)&&(yAxis>=85)&&(yAxis<=115)){
         life=life-1;
         obstacle1xAxis=width;          //width is reset after collision, otherwise for each hit between the constraints, numerous hits will occur. Also random hit resets will help in the randomization of the obstacles.
     }
     else if ((obstacle2xAxis>=xAxis-50)&&(obstacle2xAxis<=xAxis+50)&&(yAxis>=735)&&(yAxis<=765)){
         life=life-1;
         obstacle2xAxis=width+200;
     }
     else if ((obstacle3xAxis>=xAxis-50)&&(obstacle3xAxis<=xAxis+50)&&(yAxis>=235)&&(yAxis<=265)){
         life=life-1;
         obstacle3xAxis=width+350;
     }
     else if ((obstacle4xAxis>=xAxis-50)&&(obstacle4xAxis<=xAxis+50)&&(yAxis>=535)&&(yAxis<=565)){
         life=life-1;
         obstacle4xAxis=width+430;
     }
     else if ((obstacle5xAxis>=xAxis-50)&&(obstacle5xAxis<=xAxis+50)&&(yAxis>=485)&&(yAxis<=515)){
         life=life-1;
         obstacle5xAxis=width+700;
     }
     else if ((obstacle6xAxis>=xAxis-50)&&(obstacle6xAxis<=xAxis+50)&&(yAxis>=-5)&&(yAxis<=25)){
         life=life-1;
         obstacle6xAxis=width+100;
     }
     else if ((obstacle7xAxis>=xAxis-50)&&(obstacle7xAxis<=xAxis+50)&&(yAxis>=height-35)&&(yAxis<=height-5)){
         life=life-1;
         obstacle7xAxis=width+150;
     }
     else if ((obstacle8xAxis>=xAxis-50)&&(obstacle8xAxis<=xAxis+50)&&(yAxis>=35)&&(yAxis<=65)){
         life=life-1;
         obstacle8xAxis=width-300;
     }
     else if ((obstacle9xAxis>=xAxis-50)&&(obstacle9xAxis<=xAxis+50)&&(yAxis>=285)&&(yAxis<=315)){
         life=life-1;
         obstacle9xAxis=width-390;
     }
     else if ((obstacle10xAxis>=xAxis-50)&&(obstacle10xAxis<=xAxis+50)&&(yAxis>=335)&&(yAxis<=365)){
         life=life-1;
         obstacle10xAxis = width+480;
     }
     else if ((obstacle11xAxis>=xAxis-50)&&(obstacle11xAxis<=xAxis+50)&&(yAxis>=410)&&(yAxis<=440)){
         life=life-1;
         obstacle11xAxis=width;
     }
     else if ((obstacle12xAxis>=xAxis-50)&&(obstacle12xAxis<=xAxis+50)&&(yAxis>=610)&&(yAxis<=640)){
         life=life-1;
         obstacle12xAxis = width-100;
     }
     else if ((obstacle13xAxis>=xAxis-50)&&(obstacle13xAxis<=xAxis+50)&&(yAxis>=685)&&(yAxis<=715)){
         life=life-1;
         obstacle13xAxis = width-280;
     }
     else if ((obstacle14xAxis>=xAxis-50)&&(obstacle14xAxis<=xAxis+50)&&(yAxis>=height-95)&&(yAxis<=height-65)){
         life=life-1;
         obstacle14xAxis = width-80;
     }
     else if ((obstacle15xAxis>=xAxis-50)&&(obstacle15xAxis<=xAxis+50)&&(yAxis>=435)&&(yAxis<=465)){
         life=life-1;
         obstacle15xAxis = width+90;
     }
     else{
         if (life<=0){                         //<=0 used instead of ==0 because game might continue playing in the background till mouse is clicked.
             background(0);
             textSize(90); 
             text("GAME OVER",width/3,height/2);
             textSize(25); 
             text("        --Click on the screen to restart--",width/3,(height/2)+60);
             if (highScore<=score){ 
                 highScore = score;         
             }
             text("High Score: "+highScore,width-600,60);
             score = 0;
             frameRate(0.1);                                       //frameRate for "Game Over" screen set to 0.1 so that the background activity slows down so glitches occur less.
         }
     }
     for (int i = 0; i < width; i = i+45) {                         //This creates a starry background. 
         for (int j = 0; j < height; j = j+55) {
             if((i+j+1)%2==0){                                     //The diagonal arrangement is achieved by making the odd dots visible and the even dots merge with the background.
                 noStroke();
             }
             else{
                 stroke(255);
                 strokeWeight(1);
             }
             point(i, j);
         }   
     }
     stroke(0);
     strokeWeight(1);
}     

       
//MousePressed Method for Game Reset
//Game resets when mouse is Pressed. High score remains till screen is closed.
void mousePressed() {
     frameRate(100);  //since "Game Over" screen requires frameRate to be reduced to overcome bugs, mouseClick resets the frameRate value to the optimal value.
     life=10;
     score=0;
}
