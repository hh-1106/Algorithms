class MergeSort extends SortAlgorithm {

  MergeSort() {
  }

  MergeSort(Harry A) {
    super(A);
    println("Merge Sort ...");
  }

  @Override
    public void run() {
    mergeSort(0, n-1);
    this.t = null;
  }

  void mergeSort(int p, int r) {
    if (p<r) {
      int q = floor( (p+r) / 2 );
      mergeSort(p, q);
      mergeSort(q+1, r);
      merge(p, q, r);
    }
  }

  // 合并两个已排序的子序列
  // pqr是数组下标   p <= q < r
  void merge(int p, int q, int r) {
    this.setColor(p, 3);
    this.setColor(q, 2);
    int n1 = q-p+1;
    int n2 = r-q;
    // 每个堆底部放一张哨兵牌
    int[] L = new int[n1 + 1];
    int[] R = new int[n2 + 1];
    for (int i=0; i<n1; i++) {
      L[i] = A[p+i];
    }
    for (int j=0; j<n2; j++) {
      R[j] = A[q+1+j];
    }
    L[n1] = INFINITE;
    R[n2] = INFINITE;
    int i=0;
    int j=0;
    
    for (int k=p; k<=r; k++) {
      this.setColor(k, 1);
      if (L[i] <= R[j]) {
        A[k] = L[i];
        i++;
      } else {
        A[k] = R[j];
        j++;
      }
      this.sleep();
      this.setColor(k, 0);
    }
  }
}
