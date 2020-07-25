class BubbleSort extends SortAlgorithm {

  BubbleSort(){
  }
  
  BubbleSort(Harry A) {
    super(A);
    println("Bubble Sort ...");
  }

  @Override
    public void run() {

    for (int i=0; i<n; i++) {
      for (int j=n-1; j>i; j--) {
        this.setColor(j, 2);
        this.setColor(j-1, 1);
        this.sleep();
        if (A[j] < A[j-1]) {
          this.swap(j, j-1);
        }
        this.setColor(j, 0);
        this.setColor(j-1, 0);
      }
    }
    
    this.t = null;
  }
}
