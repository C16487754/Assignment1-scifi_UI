void setup()
{
 
 size(1200, 800 );
 background(0);
   
     
     for(int i=0;i<stars.length; i++)
     {
      stars[i] = new Star(); 
     }
}

Star[] stars = new Star[800];

void draw()
{
  

  background(0);
  pushMatrix();
  translate(width/2,height/2);
  for(int i=0;i<stars.length; i++)
  {
 
   stars[i].update();
   stars[i].show();
    
  }
  popMatrix();
    drawWindow();
     drawHUD();
  
  
  
   

}
void drawWindow()
{
    stroke(255);
  float border = width * 0.1f;
  float b2 = width*.02f;


  float pos = border;
 

    
   // line(b2, border, b2, height - border);
   // line(width-b2, border, width-b2, height-border);
    
    //line(pos, height-border, width - border, height-border);
   // line(pos, border, width-border, border);
}