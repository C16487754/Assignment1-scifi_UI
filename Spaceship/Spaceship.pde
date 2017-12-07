//Student name: Calvin Ho
//Student number: C16487754


void setup()
{
 
 size(1200, 800 );
 background(0);
   
     
     for(int i=0;i<stars.length; i++)
     {
      stars[i] = new Star(); 
     }
}

Star[] stars = new Star[400];

void draw()
{
  

  background(0);
    drawWindow();
     drawHUD();
  translate(width/2, height/2);
  for(int i=0;i<stars.length; i++)
  {
 
   stars[i].update();
   stars[i].display();
    
  }
  
    
  

}
void drawWindow()
{
  //window
    float border = width * 0.1f;
     strokeWeight(10);
   stroke(126);
      float len = height*.25;
   float w4 = width/4;//width/4
line(0, border, width, border);
line(w4*3, len*3, width, w4);
line(w4, len*3, 0, w4);
}