class HeapSort extends SortAlgorithm {

  HeapSort() {
  }

  HeapSort(Harry A) {
    super(A);
    //println("Heap Sort ...");
  }

  @Override
    public void run() {
    heapSort();
    this.t = null;
  }

  private void heapSort() {
    buildMaxHeap();

    for (int i=n-1; i>=0; i--) {
      this.setColor(i, 2);
      this.sleep();
      this.swap(i, 0);
      maxHeapify(i, 0);
      this.setColor(i, 0);
    }
  }

  private void buildMaxHeap() {
    for (int i=n/2-1; i>=0; i--) {
      maxHeapify(n, i);
    }
  }

  // 用于维护最大堆性质
  // 让A[i]的值在最大堆中 逐级下降
  private void maxHeapify(int n, int i) {
    int root = i;
    int l = i*2 + 1;  // left
    int r = i*2 + 2;  // right

    if (l < n && A[l] > A[root]) {
      root = l;
    }
    if (r < n && A[r] > A[root]) {
      root = r;
    }

    if (root != i) {
      this.setColor(i, 1);
      this.sleep();
      this.swap(root, i);
      maxHeapify(n, root);
      this.setColor(i, 0);
    }
  }
}
