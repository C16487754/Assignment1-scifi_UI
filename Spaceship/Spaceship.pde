float x = width/1.75;
float y = height/15;
import processing.sound.*;
SoundFile sound;
StringList commands;
color green = color(0,255,0);
color red = color(255,0,0);
color blue = color(0,0,255);
color white = color(255,255,255);


Button b1 = new Button( 500,50,100, 50,"Weapons \nSystems", color(255,0,0));
Button b2 = new Button( 450, 650,50, 50, "Fire\n weapons", color(255,0,0));
Button b3 = new Button( 450, 750, 50,50, "Auto\nPilot", color(255,0,0));
Button b4 = new Button(600, 50, 50, 50, "Radar", color(0,255,0));
Button b5 = new Button(650, 700, 60,60, "Boost", color(255,0,0));

Planet p1 = new Planet(500, 500, 300, red);
Planet p2 = new Planet(200, 300, 30, blue);
Planet p3 = new Planet(400, 30, 60, green);
Planet p4 = new Planet(1000, 700, 80, white);
void setup()
{
      
  sound = new SoundFile(this, "shoot.wav");
 frameRate(60);
 size(1200, 800 );
 background(0);

     for(int i=0;i<stars.length; i++)
     {
      stars[i] = new Star(); 
     }
     

     radar1 = new Radar(width-500, height/15, 30, .5, color(0, 255, 0));
     radar2 = new Radar(500, height/15, 30, .5, color(0, 255, 0));
     commands = new StringList();
}

Star[] stars = new Star[2000];
Planet[] planets = new Planet[1];

Radar radar1;
Radar radar2;


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
  
  
  drawWindow();
  
  //draws the weapon systems hud if the lock = true , lock = true if button is clicked.
  if(lock)
{
  drawHUD();
}
  
  drawDash();
  //draws the buttons
  b1.show();
  b2.show();
  b3.show();
  b4.show();
  b5.show();
  //draws radar
  radar1.render();
  radar1.update();
  //draws shiplog
  drawShipLog();
}