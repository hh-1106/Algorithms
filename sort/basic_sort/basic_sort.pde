Shuffle shuffle;
Harry h;

void setup() {
  size(800, 450, P2D);
  frameRate(100);
  strokeWeight(2.5);
  stroke(253, 246, 240, 128);
  h = new Harry();
  shuffle = new Shuffle(h);
}

void draw() {
  background(30);
  translate(width*0.5, height*0.5);
  h.render();
}

void keyPressed() {
  if ( key == ' ' )  shuffle.start();
}
