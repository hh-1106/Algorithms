class Harry {
  int[] A;        // 数组 A
  int n = 1000;   // 长度

  Harry() {
    A = new int[n];
    for (int i=0; i<n; i++)
      A[i] = i;
  }

  void show() {
    for (int i=0; i<n; i++) {
      // 映射角度和半径
      float a = map(i, 0, n, -HALF_PI, TWO_PI-HALF_PI);
      float r = map(A[i], 0, n, 0, height*0.45);
      polarShow(a, r);
    }
  }

  void polarShow(float a, float r) {
    pushMatrix();
    rotate(a);
    //point(r, 0);
    line(0, 0, r, 0);
    popMatrix();
  }
}
