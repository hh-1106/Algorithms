class Shuffle extends SortAlgorithm {

  Shuffle(Harry A) {
    super(A);
    println("Shuffle ...");
  }

  @Override
    public void run() {
    int val;
    for (int i=0; i<n-1; i++) {
      this.setColor(i, 2);
      this.sleep();
      int max = n-i;
      int rnd = int(random(max));
      this.setColor(rnd, 0);
      this.setColor(i, 0);
      val = A[rnd];
      A[rnd] = A[max-1];
      A[max-1] = val;
    }

    this.t = null;

    // TODO: 多线程随机
  }
}
