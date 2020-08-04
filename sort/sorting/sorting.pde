//String[] sortNames = {"shuffle", "insertion", "radix", "bubble", "merge", "heap", "quick", "bucket", "shell", "counting"};
String[] sortNames = {"shuffle", "insertion", "radix", "bubble", "merge", "heap", "quick", "quick", "shell", "counting"};
int W = 96;    // 一行3个
int H = 54;    // 一列2个
int STOP = 1; // 越大越慢

HarrySystem hs;

void settings() {
  //size(1600, 900, P2D);
  fullScreen(P2D);
  smooth(6);
}

void setup() {
  frameRate(5);
  setColorScheme();
  setFont();
  hs = new HarrySystem();
}

void draw() {
  background(30);
  //textSize(80);
  hs.update();
  hs.show();
  
  surface.setTitle("" + frameRate);
  //saveFrame("96_54-###.png");
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

  STOP = constrain(STOP, 1, 50);
  println("STOP: " + STOP);
}
