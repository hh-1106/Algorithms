public class SortAlgorithm implements Runnable {
  Thread t;
  int[] A;
  int n;
  Harry harry;

  SortAlgorithm() {
    println("SortAlgorithm ...");
  }
  
  SortAlgorithm(Harry h) {
    this.harry = h;
    this.A = h.A;
    this.n = h.A.length;
  }

  @Override
    public void run() {
  }

  public void start() {
    if (t != null)  return;
    //println(this.getClass().getName() + " start ...");
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

  private boolean isSorted() {
    for (int i=0; i<A.length-1; i++) {
      if (A[i] > A[i+1])  return false;
    }
    return true;
  }

  public void swap(int i, int j) {
    int t = A[i];
    A[i] = A[j];
    A[j] = t;
  }

  public void setColor(int index, int col) {
    this.harry.setColor(index, col);
  }
}
