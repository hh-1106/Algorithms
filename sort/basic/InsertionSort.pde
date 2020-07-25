class InsertionSort extends SortAlgorithm {
  
  // 父类中的构造方法是不能继承的
  // 但是在实例化子类的时候会调用父类的构造方法
  InsertionSort(Harry A) {
    super(A);
    println("Insertion Sort ...");
  }

  @Override
    public void run() {
    for (int j=1; j<n; j++) {
      this.setColor(j, 2);
      int k = A[j];
      // Insert A[j] into the sorted sequence A[0..j-1]
      int i = j-1;
      while (i>=0 && A[i] > k) {

        this.setColor(i, 1);
        this.sleep();
        this.setColor(i, 0);

        A[i+1] = A[i];
        i--;
      }
      A[i+1] = k;
    }
    this.setColor(n-1, 0);
    
    this.t = null;
  }
}
