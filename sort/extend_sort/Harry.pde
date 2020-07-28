// my array
class Harry {
  PGraphics pg;
  int[] A;
  int[] cols;
  int n = 1024;

  Harry() {
    pg = createGraphics(width, height, P2D);
    cols = new int[n];
    A = new int[n];
    for (int i=0; i<n; i++) {
      A[i] = i;
      //A[i] = floor(random(n));
    }
  }

  void render() {
    pg.beginDraw();
    pg.background(106, 94, 96, 0);

    pg.strokeWeight(2.5);
    pg.translate(pg.width*0.618, pg.height*0.5);
    for (int i=0; i<n; i++) {
      float a = map(i, 0, n, -HALF_PI, TWO_PI-HALF_PI);
      float r = map(A[i], 0, n, 0, pg.height*0.45);
      pg.stroke(cs.get(cols[i]));
      polarShow(a, r);
    }
    pg.endDraw();
  }

  void setColor(int index, int col) {
    cols[index] = col;
  }

  void polarShow(float a, float r) {
    pg.pushMatrix();
    pg.rotate(a);
    //pg.point(r, 0);
    pg.line(0, 0, r, 0);
    pg.popMatrix();
  }
}
