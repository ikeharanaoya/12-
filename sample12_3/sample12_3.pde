PVector[][] lattice;
PShape tile;
PVector[] base = new PVector[2]; //格子を張るベクトル
int num = 2;
float scalar;
float gap = random(0.01, 0.5); //再帰的な正三角形を作るパラメータ

void setup(){
   size(500, 500);
   scalar = height * 1.0 / num;
   makeHexVector();
   makeLattice();
   makePatternP3M1();
   drawTiling();
 }
void draw(){
  if(gap> 0.96){gap = 0.00;}
  gap+= 0.01;
  makePatternP3M1();
  drawTiling();
 }
 void mouseClicked(){  //マウスクリック時の動作
   makePatternP3M1();
   drawTiling();
 }
