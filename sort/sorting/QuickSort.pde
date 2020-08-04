class QuickSort extends SortAlgorithm {

  QuickSort() {
  }

  QuickSort(Harry A) {
    super(A);
    //println("Quick Sort ...");
  }

  @Override
    public void run() {
    //quickSort(0, n-1);
    randomizedQuickSort(0, n-1);
    this.t = null;
  }

  void quickSort(int p, int r) {
    if (p<r) {
      int q = partition(p, r);
      this.setColor(q, 3);
      quickSort(p, q-1);
      quickSort(q+1, r);
      this.setColor(q, 0);
    }
  }

  // 对子数组A[p..r]原址重排
  int partition(int p, int r) {
    int x = A[r];      // pivot element
    int i = p;

    for (int j=p; j<r; j++) {
      this.setColor(j, 2);
      this.setColor(i, 1);
      if (A[j] <= x) {
        this.setColor(i, 1);
        this.swap(i, j);
        this.sleep();
        this.setColor(i, 0);
        i++;
      }
      this.setColor(j, 0);
    }
    this.setColor(r, 0);
    this.swap(i, r);

    return i;
  }

  // 随机抽样
  int randomizedPartition(int p, int r) {
    // 将A[r] 与从A[p..r]中随机选出的一个元素交换, 以保证主元是随机选取的
    // 我们期望在平均情况下对输入数组的划分是比较均衡的
    int i = floor(random(p, r+1));
    this.swap(i, r);
    return partition(p, r);
  }

  void randomizedQuickSort(int p, int r) {
    if (p<r) {
      int q = randomizedPartition(p, r);
      this.setColor(q, 3);
      randomizedQuickSort(p, q-1);
      randomizedQuickSort(q+1, r);
      this.setColor(q, 0);
    }
  }
}
