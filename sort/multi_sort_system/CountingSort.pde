class CountingSort extends SortAlgorithm {

  CountingSort(Harry A) {
    super(A);
    println("Counting Sort ...");
  }

  @Override
    public void run() {
    // 存放排序的输出数组
    int[] B = new int[n];
    int k = 0;
    for (int i=0; i<n; i++) k = max(k, A[i]);
    countingSort(B, k);

    for (int i = 0; i < n; i++) {
      this.setColor(i, 3);
      A[i] = B[i];
      this.sleep();
      this.setColor(i, 0);
    }
    this.t = null;
  }

  void countingSort(int[] B, int k) {

    // 计数数组C初始化全0
    int[] C = new int[k+1];
    for (int i=0; i<=k; i++)  C[i] = 0;

    // 计数
    for (int j=0; j<n; j++) {
      this.setColor(j, 2);
      this.sleep();
      C[ A[j] ]++;
      this.setColor(j, 0);
    }

    // 加总
    for (int i=1; i<=k; i++)  C[i] += C[i-1];

    // 把每个元素A[j]放到它在B中的正确位置
    for (int j=n-1; j>=0; j--) {
      this.setColor(j, 1);
      B[ C[ A[j] ]-1 ] = A[j];
      C[ A[j] ]--;
      this.sleep();
      this.setColor(j, 0);
    }
  }
}
