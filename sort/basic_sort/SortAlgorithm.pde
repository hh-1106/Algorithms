public class SortAlgorithm implements Runnable {
  Thread t;
  int[] A;    // 数组A的引用 共享内存
  int n;

  SortAlgorithm(Harry h) {
    this.A = h.A;
    n = A.length;
  }

  @Override
    public void run() {
  }

  // 新线程创建之后，调用它的 start() 方法才会运行。
  public void start() {
    if (t != null)  return;
    println(this.getClass() + " start ...");
    t = new Thread(this);
    t.start();
  }

  public void sleep() {
    try {
      Thread.sleep(5);
    }
    catch (Exception e) {
    }
  }

  public void swap(int i, int j) {
    int t = A[i];
    A[i] = A[j];
    A[j] = t;
  }
}
