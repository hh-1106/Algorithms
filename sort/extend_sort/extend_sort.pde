int INFINITE = 99999;

InsertionSort insertionSort;
BubbleSort    bubbleSort;
MergeSort     mergeSort;
QuickSort     quickSort;
HeapSort      heapSort;


Shuffle       shuffle;

Harry h;

void settings() {
  size(900, 450, P2D);
  smooth(8);
}

void setup() {
  frameRate(30);
  setColorScheme();
  h = new Harry();

  insertionSort = new InsertionSort(h);
  bubbleSort    = new BubbleSort(h);
  mergeSort     = new MergeSort(h);
  quickSort     = new QuickSort(h);
  heapSort      = new HeapSort(h);
  
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
  if ( key == '3' )  mergeSort.start();
  if ( key == '4' )  heapSort.start();
  if ( key == '5' )  quickSort.start();
}
