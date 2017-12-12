class Planet extends Star
{
  
  float x;
  float y;
 
  Planet()
  {
    x= width/2;
    y=height/2;
  }
  
  void update()
  {
   if(checkKey('a'))
  {
   x=x+5;
  }
  
  if(checkKey('d'))
  {
   x=x-5;
  }
  
  if (checkKey(UP))
  {
    y=y+5;
  }
    if (checkKey(DOWN))
  {
    y=y-5;
  }
  
  
  if(x>width+50)
  {
   x= -width; 
  }

  }
  void show()
  
  {
    float x2=x*2;
    fill(0,100,100);
    ellipse(x,y,100,100);
    fill(200,0,0);
    ellipse(x2,y,400,400);
  }
  
}