class Star{
 float x;
 float y;
 float z;
  
Star()
{
 x= random(-width, width);
  y=random(-height,height);
  z=random(width);

}

void update()
{
  if(checkKey('a'))
  {
   x=x+5;
  }
if (checkKey('d'))
    {
      x=x-5;
    }
  
  if (checkKey('w'))
  {
    z=z-5;
  }
  if (checkKey('s'))
  {
    
  } 
  
  if (checkKey(UP))
  {
    y=y+5;
  }
    if (checkKey(DOWN))
  {
    y=y-5;
  }
  if(b3clicked)
  {
    z=z-5;
  }
    
  
  if(z<1)
  {
    z=width; 
    x= random(-width, width);
    y=random(-height,height);
  }
  
  if(x<-width)
  {
    x= width;
    y=random(-height,height);
  }
  
   if(x>width)
  {
    x= -width;
    y=random(-height,height);
  }
  
  
  if(y<-height)
  {
    x= random(-width, width);
    y=height;
    
  }
  
  if(y>height)
  {
    x = random(-width,width);
    y= -height;
  }
 
}


void show()
{
  float r = map(z,0,width,5,0);

  float sx = map(x/z,0,1,0,width);
float sy = map(y/z,0,1,0,height);
fill(255);
 ellipse(sx,sy,r,r);
}

}