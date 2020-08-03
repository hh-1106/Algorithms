int INFINITE = 99999;

ArrayList<Integer> cs;  // color scheme

void setColorScheme() {
  cs = new ArrayList<Integer>();
  cs.add(color(253, 246, 240, 150));
  cs.add(color(148, 53, 66, 250));
  cs.add(color(96, 187, 208, 250));
  cs.add(color(137, 68, 132, 250));
  cs.add(color(250, 229, 226, 250));
  cs.add(color(36, 74, 147, 250));
}

void setFont() {
  //String[] fontList = PFont.list();
  //printArray(fontList);
  //noLoop();
  PFont font = createFont("Mouse.otf", 48);
  fill(cs.get(0));
  textFont(font);
  textAlign(CENTER, CENTER);
}

float log10 (int x) {
  return (log(x) / log(10));
}
