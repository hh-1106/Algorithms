int INFINITE = 99999;

InsertionSort insertionSort;
BubbleSort    bubbleSort;
MergeSort     mergeSort;
QuickSort     quickSort;
HeapSort      heapSort;
Shuffle       shuffle;

HarrySystem hs;

void settings() {
  size(1280, 720, P2D);
  smooth(6);
}

void setup() {
  frameRate(300);
  setColorScheme();
  hs = new HarrySystem();

  //insertionSort = new InsertionSort(h);
  //bubbleSort    = new BubbleSort(h);
  //mergeSort     = new MergeSort(h);
  //quickSort     = new QuickSort(h);
  //heapSort      = new HeapSort(h);
  //shuffle       = new Shuffle(h);
}

void draw() {
  background(30);
  hs.show();

  surface.setTitle("" + frameRate);
}

void mouseClicked() {
}

void keyPressed() {
  //if ( key == ' ' )  shuffle.start();
  //if ( key == '1' )  insertionSort.start();
  //if ( key == '2' )  bubbleSort.start();
  //if ( key == '3' )  mergeSort.start();
  //if ( key == '4' )  quickSort.start();
  //if ( key == '5' )  heapSort.start();
}
