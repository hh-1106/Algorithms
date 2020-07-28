class Shuffle extends SortAlgorithm {

  Shuffle(Harry A) {
    super(A);
    println("Shuffle ...");
  }

  @Override
    public void run() {
    for (int i=n-1; i>=0; i--) {
      this.setColor(i, 2);
      int rnd = floor(random(i+1));
      swap(i, rnd);
      this.sleep();
      this.setColor(rnd, 0);
      this.setColor(i, 0);
    }

    this.t = null;

    // TODO: 多线程随机
  }
}
