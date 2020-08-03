//String[] sortNames = {"shuffle", "counting", "radix", "bucket", "insertion", "shell", "bubble", "merge", "heap", "quick"};
String[] sortNames = {"shuffle", "insertion", "radix", "bubble", "merge", "heap", "quick", "bucket", "shell", "counting"};
int W = 3;    // 一行3个
int H = 3;    // 一列2个

HarrySystem hs;

void settings() {
  //size(1600, 900, P2D);
  size(1200, 675, P2D);
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
