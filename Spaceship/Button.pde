class Button
{
  float buttonX;
  float buttonY;
  float buttonH;
  float buttonW;
  String text;
  color c;
 Button(float x, float y, float w, float h, String t, color c)
 {
   this.buttonX = x;
   this.buttonY = y;
   this.buttonH = h;
   this.buttonW = w;
   this.text = t;
   this.c = c;
   
 }
 void show()
{
  strokeWeight(5);
  stroke(100);
  fill(c);
  rectMode(CENTER);

  rect(buttonX, buttonY, buttonW, buttonH, 10);
  fill(0);
  textSize(10);
  textAlign(CENTER, CENTER);
  text( text, buttonX, buttonY);
}
}