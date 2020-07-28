// 洗牌算法
class Shuffle extends SortAlgorithm {

  Shuffle(Harry h) {
    super(h);
  }

  @Override
    public void run() {
    for (int i=n-1; i>=0; i--) {
      int rnd = floor(random(i+1));
      this.swap(i, rnd);
      this.sleep();
    }
    this.t = null;
  }
}
