class SortAlgorithmFactory {

  SortAlgorithm createSA(String type, Harry h) {
    SortAlgorithm sa = null;

    switch(type) {
    case "counting" :
      sa = new CountingSort(h);
      break;
    case "radix" :
      sa = new RadixSort(h);
      break;
    case "bucket" :
      sa = new BucketSort(h);
      break;
    case "insertion" :
      sa = new InsertionSort(h);
      break;
    case "shell" :
      sa = new ShellSort(h);
      break;
    case "bubble" :
      sa = new BubbleSort(h);
      break;
    case "merge" :
      sa = new MergeSort(h);
      break;
    case "heap" :
      sa = new HeapSort(h);
      break;
    case "quick" :
      sa = new QuickSort(h);
      break;
    default:
      sa = new Shuffle(h);
      break;
    }

    return sa;
  }
}
