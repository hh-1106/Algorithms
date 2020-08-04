class RadixSort extends SortAlgorithm {

  RadixSort(Harry A) {
    super(A);
    //println("Radix Sort ...");
  }

  @Override
    public void run() {
    // 找出数组中最大数
    int max = 0;
    for (int i=0; i<n; i++) max = max(max, A[i]);
    radixSort(floor(log10(max)+1));
    this.t = null;
  }

  void radixSort(int d) {
    for (int i=0; i<d; i++) {
      int pow = (int)pow(10, i);
      countingSort(pow);
    }
  }

  void countingSort(int pow) {
    int[] B = new int[n];

    // 计数
    int[] C = new int[10];
    for (int i=0; i<C.length; i++)  C[i] = 0;
    for (int j=0; j<n; j++) {
      //this.setColor(j, 2);
      //this.sleep();
      C[ (A[j]/pow)%10 ]++;    //取相应阶位的数
      //this.setColor(j, 0);
    }
    for (int i=1; i<10; i++)  C[i] += C[i-1];

    for (int j=n-1; j>=0; j--) {
      this.setColor(j, 2);
      int i = (A[j]/pow) % 10;
      B[ --C[i] ] = A[j];
      this.sleep(1);
      this.setColor(j, 0);
    }

    for (int i = 0; i < n; i++) {
      this.setColor(i, 1);
      A[i] = B[i];
      this.sleep();
      this.setColor(i, 0);
    }
  }
}
