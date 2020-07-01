PImage pictureOfRecord;
int angle = 0;
void setup(){
  size(600,600);
  pictureOfRecord=loadImage("record.jpeg");
  pictureOfRecord.resize(600,600);
}
void draw(){

    rotateImage(pictureOfRecord,angle);
  image(pictureOfRecord,0,0);
    if(mousePressed == true){
  angle ++;
  }
}

void rotateImage(PImage image, int amountToRotate) {
        translate(width/2, height/2);
        rotate(amountToRotate*TWO_PI/360);
        translate(-image.width/2, -image.height/2);
    }
