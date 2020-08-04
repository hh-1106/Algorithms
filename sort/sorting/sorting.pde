//String[] sortNames = {"shuffle", "insertion", "radix", "bubble", "merge", "heap", "quick", "bucket", "shell", "counting"};
String[] sortNames = {"shuffle", "merge"};
int W = 32;    // 一行3个
int H = 18;    // 一列2个
int STOP = 1; // 越大越慢

HarrySystem hs;

void settings() {
  //size(960, 540, P2D);
  fullScreen(P2D);
  smooth(6);
}

void setup() {
  frameRate(30);
  setColorScheme();
  setFont();
  hs = new HarrySystem();
}

void draw() {
  background(30);
  //textSize(80);
  //hs.update();
  hs.show();
  
  surface.setTitle("" + frameRate);
  //saveFrame("data/"+ W + "_" + H + "/###.png");
}

void mouseClicked() {
}

void keyPressed() {
  switch(key) {
  case ' ':
    hs.shuffleAll();
    break;
  case ENTER:
    hs.setSortAlgorithms();
    break;
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  STOP += (e>0) ?1 :-1;

  STOP = constrain(STOP, 1, 100);
  println("STOP: " + STOP);
}
