class Radar
{
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float cx, float cy, float radius, float frequency, color c)
  {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    rect(cx,cy, 80,80);
    stroke(c);
    strokeWeight(2);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
    int trailLength = 10;
    float greenIntensity = 255 / (float)trailLength;
    if(b4clicked)
    {
      greenIntensity = 0 / (float)trailLength;
   
    }
    else
    {
      greenIntensity = 255 / (float)trailLength;
    }
    
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(0, i * greenIntensity, 0);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
  }
}