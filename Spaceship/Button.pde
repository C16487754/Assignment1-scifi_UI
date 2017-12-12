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

boolean b1clicked = false;
boolean b2clicked =false;
boolean b3clicked = false;
boolean b4clicked = false;
boolean b5clicked = false;
  void mousePressed()
{
    float b1x = 500;
    float b1y= 50;
  if (mouseX >b1x-50 && mouseX <b1x+50
    && mouseY >b1y-25 && mouseY <b1y+25 )
    {
      
      if(b1clicked)
      {
      lock = false;
      println("weapon systems off");
      b1clicked= false;
      b1.c = color(255,0,0);
          b2.c = color(255,0,0);
      }
      else
      {
        println("weapons systems on");
        lock = true;
        b1clicked = true;
            b1.c = color(0,255,0);
             b2.c = color(0,255,0);
      }
    }
}