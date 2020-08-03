String[] sortNames = {"shuffle", "counting", "insertion", "shell", "bubble", "merge", "heap", "quick"};
int W = 2;    // 一行3个
int H = 1;    // 一列2个

HarrySystem hs;

void settings() {
  size(1200, 600, P2D);
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
  hs.show();

  surface.setTitle("" + frameRate);
}

void mouseClicked() {
  hs.setSortAlgorithms();
}

void keyPressed() {
  hs.shuffleAll();
}
