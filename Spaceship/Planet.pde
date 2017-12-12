class Planet
{
  
  float planetW;
  float planetH;
  float radius;
  color colour;
 
  Planet(float w,float h,float r, color c)
  {
    this.planetW = w;
    this.planetH = h;
    this.radius = r;
    this.colour = c;
  }
  
  void update()
  {
    if(checkKey('a'))
    {
     planetW= planetW +10;
    }
    
    if(checkKey('d'))
    {
     planetW=planetW-10;
    }
    
    if (checkKey(UP))
    {
      planetH=planetH+10;
    }
    
    if (checkKey(DOWN))
    {
      planetH=planetH-10;
    }
    
    
    if(planetW>width+200)
    {
     planetW=-width; 
    }
    
    if(planetW<-width-50)
    {
     planetW = width+100; 
    }
    
    if(planetH<-height-300)
    {
     planetH = height; 
    }
    
    if(planetH>height+300)
    {
     planetH = -height; 
    }

  }
  
  void show()
  {
    fill(colour);
    ellipse(planetW, planetH, radius, radius);
  }
 
}