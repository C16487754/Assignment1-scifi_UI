class Button
{
  float buttonX;
  float buttonY;
  float buttonH;
  float buttonW;
  String text;
 Button(float x, float y, float w, float h, String t)
 {
   buttonX = x;
   buttonY = y;
   buttonH = h;
   buttonW = w;
   text = t;
   
 }
 void show()
{
  float x = width/1.75;
  float y = height/15;
  strokeWeight(5);
  stroke(100);
  fill(255,0,0);
  if(b1clicked)
  {
    fill(0,255,0);
  }

  rectMode(CENTER);

  rect(buttonX, buttonY, buttonW, buttonH, 10);
  fill(0);
  textSize(10);
  textAlign(CENTER, CENTER);
  text( text, buttonX, buttonY);
}

}

boolean showws = true;
boolean b1clicked = false;
    boolean b2clicked =false;
    boolean b3clicked = false;
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
      notes.append("Weapon systems disabled");
      }
      else
      {
        println("weapons systems on");
        lock = true;
        b1clicked = true;
        notes.append("Weapon systems engaged");
      }
    }

    float b2x = 450;
    float b2y= 650;
    
          
 
   if (mouseX >b2x-50 && mouseX <b2x+50
    && mouseY >b2y-25 && mouseY <b2y+25  && b1clicked)
    

    {
      println("fire");
           sound.play();
           stroke(0,255,0);
           line(3*width/4, 3*height/4, width/2,(height/2.5)+20);
           line(width/4, 3*height/4, width/2, (height/2.5)+20);
           notes.append("Weapon fired");
      }
      
      float b3x = 450;
      float b3y = 750;
      
      //autopilot
      if (mouseX >b3x-50 && mouseX <b3x+50
    && mouseY >b3y-25 && mouseY <b3y+25)
   {
      
      if(b3clicked)
      {
      println("boost off");
      b3clicked= false;
      notes.append("Autopilot disabled");
      }
      else
      {
        println("boost on");
        lock = true;
        b3clicked = true;
        notes.append("Autopilot engaged");
      }
   }
}