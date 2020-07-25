class HarrySystem {

  ArrayList<Harry> harrys;

  HarrySystem() {
    harrys = new ArrayList<Harry>();
    for (int i=0; i<4; i++) {
      harrys.add(new Harry());
    } //<>// //<>// //<>//
  }

  void show() {
    for (int i=0; i<harrys.size(); i++) { //<>//
      Harry h = harrys.get(i);
      h.render(); //<>// //<>// //<>//
      image(h.pg, i%2*width*0.5, i/2*height*0.5);
    } //<>//
  }
}
