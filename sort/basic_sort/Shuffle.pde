class Shuffle implements Runnable {
  Thread t;
  int[] A;
  int n;

  Shuffle(Harry h) {
    this.A = h.A;
    n = A.length;
    println("Shuffle ...");
  }

  @Override
    public void run() {
    int val;
    for (int i=0; i<n-1; i++) {
      this.sleep();
      int max = n-i;
      int rnd = int(random(max));
      val = A[rnd];
      A[rnd] = A[max-1];
      A[max-1] = val;
    }
    this.t = null;
  }

  public void start() {
    if (t != null)  return;
    println(this.getClass() + " start ...");
    t = new Thread(this);
    t.start();
  }

  public void sleep() {
    try {
      Thread.sleep(1);
    }
    catch (Exception e) {
    }
  }
}
