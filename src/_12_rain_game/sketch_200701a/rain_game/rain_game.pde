int y = 0;
int rand = (int)random(width);
int score = 0;
void setup(){
  size(600,600);
  noStroke();
}
void draw(){
  background(#FFFFFF);
  fill(0,0,255);
  ellipse(rand,y,15,70);
  fill(170,170,170);
  rect(mouseX,580,100,40);
  y += 20;
  fill(0,0,0);
  textSize(16);
  text("Score: " + score, 20, 20);
  if(y > 670){
   y = 0; 
   checkCatch(rand);
   rand = (int)random(width);
  }
}
 void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score++;
         else if (score > 0) 
            score--;
        println("Your score is now: " + score);
    }
