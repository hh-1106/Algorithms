Shuffle shuffle;
Harry h;

void setup() {
  size(800, 450, P2D);
  strokeWeight(2.5);
  stroke(220, 127);
  h = new Harry();
  shuffle = new Shuffle(h);
  shuffle.start();
}

void draw() {
  background(30);
  translate(width*0.5, height*0.5);
  h.show();
}

void keyPressed() {
  if ( key == ' ' )  shuffle.start();
}
