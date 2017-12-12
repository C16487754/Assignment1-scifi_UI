  float x = width/1.75;
  float y = height/15;
  import processing.sound.*;
   SoundFile sound;
   
   StringList notes;
   

Button b1 = new Button( 500,50,100, 50,"Weapons \nSystems");
Button b2 = new Button( 450, 650,50, 50, "Fire\n weapons");
Button b3 = new Button( 450, 750, 50,50, "Auto\nPilot");


void setup()
{
     if (checkKey(' '))
    { 
      println("fire");
           sound.play();
           stroke(0,255,0);
           line(3*width/4, 3*height/4, width/2,(height/2.5)+20);
           line(width/4, 3*height/4, width/2, (height/2.5)+20);
      }
      
  sound = new SoundFile(this, "shoot.wav");
 frameRate(60);
 size(1200, 800 );
 background(0);

     for(int i=0;i<stars.length; i++)
     {
      stars[i] = new Star(); 
     }
     
     for(int i=0;i<planets.length; i++)
     {
      planets[i] = new Planet(); 
     }
     
     notes = new StringList();
}

Star[] stars = new Star[2000];
Planet[] planets = new Planet[1];
ArrayList<Bullet> bullets = new ArrayList<Bullet>();



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
  
       for(int i=0;i<planets.length; i++)
  {
 
   planets[i].update();
   planets[i].show();
    
  }
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

    if(lock){ drawHUD();}

    drawDash();
     b1.show();
     b2.show();
     b3.show();
     drawCmd();
}