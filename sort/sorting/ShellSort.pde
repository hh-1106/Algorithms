class ShellSort extends SortAlgorithm {

  ShellSort() {
  }

  ShellSort(Harry A) {
    super(A);
    //println("Shell Sort ...");
  }

  @Override
    public void run() {
    shellsort();
    this.t = null;
  }

  void shellsort() {
    for (int gap = n/2; gap>0; gap /= 2) {
      for (int i=gap; i<n; i++) {
        this.setColor(i, 2);
        int temp = A[i];
        int j;
        for (j = i; j >= gap && A[j - gap] > temp; j -= gap) {
          A[j] = A[j - gap];
          this.setColor(j+1, 1);
          this.sleep();
          this.setColor(j+1, 0);
        }
        A[j] = temp;
        this.setColor(i, 0);
      }
    }
  }
}
