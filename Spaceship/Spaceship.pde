color green = color(0,255,0);
color red = color(255,0,0);
color blue = color(0,0,255);
color white = color(255,255,255);

Planet p1 = new Planet(500, 500, 300, red);
Planet p2 = new Planet(200, 300, 30, blue);
Planet p3 = new Planet(400, 30, 60, green);
Planet p4 = new Planet(1000, 700, 80, white);
void setup()
{
      
 frameRate(60);
 size(1200, 800 );
 background(0);

     for(int i=0;i<stars.length; i++)
     {
      stars[i] = new Star(); 
     }
     
}

Star[] stars = new Star[2000];
Planet[] planets = new Planet[1];

//key functions
boolean keys[] = new boolean[1024];
boolean lock = false;

void keyPressed()
{
  println("Key pressed");
  keys[keyCode] = true;
}

void keyReleased()
{
  println("Key released");
  keys[keyCode] = false;
}

boolean checkKey(int k)
{
  return keys[Character.toLowerCase(k)] || keys[Character.toUpperCase(k)]; 
}


void draw()
{
  noStroke();
  background(0);
  //draws planets
  p1.show();
  p1.update();
  p2.show();
  p2.update();
  p3.show();
  p3.update();
  p4.show();
  p4.update();
  pushMatrix();
  float n =width/2;
  float m =height/2;
  translate(n,m);
  for(int i=0;i<stars.length; i++)
  {
     stars[i].update();
     stars[i].show();
  }
  popMatrix();
  
{
  drawHUD();
}
  drawWindow();
  
  drawDash();

}