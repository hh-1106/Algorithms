class HarrySystem { //<>// //<>// //<>//
  ArrayList<Harry> harrys;
  SortAlgorithmFactory saf;    // 算法工厂
  int n = W*H;                 // 排序算法数量

  HarrySystem() {
    saf = new SortAlgorithmFactory();
    harrys = new ArrayList<Harry>();
    for (int i=0; i<n; i++) {
      harrys.add(new Harry());
    }
  }

  // 设置每个Harry的排序算法
  void setSortAlgorithms() {
    for (int i=0; i<n; i++) {
      Harry h = harrys.get(i);
      if (h.isSorting()) continue;
      h.setSortAlgorithm(saf.createSA(sortNames[i+1], h));
    }
  }

  void shuffleAll() {
    for (Harry h : harrys) {
      if (h.isSorting()) continue;
      SortAlgorithm sa = saf.createSA(sortNames[0], h);
      h.setSortAlgorithm(sa);
    }
  }

  void show() {
    for (int i=0; i<harrys.size(); i++) {
      Harry h = harrys.get(i);

      h.render();
      // 将Harry按顺序进行W*H的矩阵排列
      pushMatrix();
      translate(i%W *h.pg.width, i/W *h.pg.height);
      image(h.pg, 0, 0);
      text(sortNames[i+1], h.pg.width*0.618, h.pg.height*0.5);
      popMatrix();
    }
  }
}
