PVector[][] lattice;
PShape tile;
PVector[] base = new PVector[2]; //格子を張るベクトル
int num = 5;
float scalar;
void setup(){
  frameRate(30);
  size(500, 500, P2D);
  colorMode(HSB, 1);
  background(0, 0, 1);
  scalar = height * 1.0 / num;
  makeHexVector();
  makeLattice();
  makePatternP6M();
  drawTiling();
}
void draw(){}
void mouseClicked(){ //マウスクリック時の動作
  makePatternP6M();
  drawTiling();
}
