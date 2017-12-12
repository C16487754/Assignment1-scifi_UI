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

  }
  
  void show()
  {
    fill(colour);
    ellipse(planetW, planetH, radius, radius);
  }
 
}