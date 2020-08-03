import java.util.List;

class BucketSort extends SortAlgorithm {

  BucketSort(Harry A) {
    super(A);
    println("Bucket Sort ...");
  }

  @Override
    public void run() {
    bucketSort();
    this.t = null;
  }

  void bucketSort() {
    // 设置10个桶
    int num = 10;
    ArrayList<Integer>[] buckets = new ArrayList[num];
    for (int a : A) {
      int i = floor(a/(n/num));    // 桶的序号
      i = constrain(i, 0, num-1);
      println(a, i);
      if (buckets[i] == null) buckets[i] = new ArrayList<Integer>();
      buckets[i].add(a);
    }
    int j=0;
    for (ArrayList<Integer> b : buckets) {
      if (b != null) {
        b.sort(null);
        this.setColor(j, 1);
        this.sleep(128);
        this.setColor(j, 0);

        for (int a : b) {
          this.setColor(j, 2);
          A[j] = a;
          this.sleep();
          this.setColor(j++, 0);
        }
      }
    }
  }
}
