import java.lang.reflect.Constructor;

// my array
class Harry {
  PGraphics pg;
  int[] A;
  int[] status;
  int n = 512;
  SortAlgorithm sort;

  Harry() {
    pg = createGraphics(width/2, height/2, P2D);
    status = new int[n];
    A = new int[n];
    for (int i=0; i<n; i++) {
      A[i] = n-i;
      //A[i] = floor(random(n));
    }
    sort = new Shuffle(this);

    sort.start();
  }

  void render() {
    pg.beginDraw();
    pg.background(106, 94, 96, 0);

    pg.strokeWeight(2);
    pg.translate(pg.width*0.5, pg.height*0.5);
    for (int i=0; i<n; i++) {
      float a = map(i, 0, n, -HALF_PI, TWO_PI-HALF_PI);
      float r = map(A[i], 0, n, 0, pg.height*0.5);
      pg.stroke(cs.get(status[i]));
      polarShow(a, r);
    }
    pg.endDraw();
    //image(pg,0,0);
  }

  void setColor(int index, int col) {
    status[index] = col;
  }

  void polarShow(float a, float r) {
    pg.pushMatrix();
    pg.rotate(a);
    pg.translate(pg.height*0.382, 0);
    //pg.point(r, 0);
    pg.line(0, 0, -r*0.618, 0);
    pg.popMatrix();
  }
}
