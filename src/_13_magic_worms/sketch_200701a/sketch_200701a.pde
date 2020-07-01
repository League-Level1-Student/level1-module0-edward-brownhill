float x = 0;
float y = 0;
int red = 0;
int blue = 0;
int green = 0;

void setup(){
  size(600,600);
  background(#FFFFFF);
  noStroke();
}
void draw(){
   makeMagical();
  for(int i = 0; i<300; i++){
      red = (int)random(256);
      green = (int)random(256);
      blue = (int)random(256);
      fill(red, green, blue);
      ellipse(x,y,3,3);
      x = getWormX(i);
      y = getWormY(i);
  }
}
 float frequency = .001;
    float noiseInterval = PI;

    void makeMagical() {
        fill( 0, 0, 0, 10 );
        rect(0, 0, width, height);
        noStroke();
    }

    float getWormX(int i) {
        return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
    }

    float getWormY(int i) {
        return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
    }
