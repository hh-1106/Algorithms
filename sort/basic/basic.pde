int INFINITE = 99999;

InsertionSort insertionSort;
BubbleSort    bubbleSort;
Shuffle       shuffle;

Harry h;

void settings() {
  size(1280, 720, P2D);
  smooth(6);
}

void setup() {
  frameRate(300);
  setColorScheme();
  h = new Harry();

  insertionSort = new InsertionSort(h);
  bubbleSort    = new BubbleSort(h);
  shuffle       = new Shuffle(h);
  
  shuffle.start();
}

void draw() {
  background(30);

  h.render();
  image(h.pg, 0, 0);

  surface.setTitle("" + frameRate);
}

void mouseClicked() {
}

void keyPressed() {
  if ( key == ' ' )  shuffle.start();
  if ( key == '1' )  insertionSort.start();
  if ( key == '2' )  bubbleSort.start();
}
