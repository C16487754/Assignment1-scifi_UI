class HUD
{

   
  
}

void drawHUD()
{
    strokeWeight(1);
     stroke(255);
 
  //hud
  int x=6;
  
   float len = height*.25;
  float b3 = width/3;//hudW
  float smol = width*.025;//30
  float smol2 = width*.02;//24
   //big line left side

     
   line(b3, len, b3, height - len*2);
   //small lines on left side
   line(b3, len, b3-smol, len);
   line(b3, len+len/2, b3-smol2, len+len/2);
   line(b3, height - len*2, b3-smol, height-len*2);
   fill(255);
   textSize(20);
   text(x,b3-smol-10, len+len/2+6);

   
   //big line right side
   line(width-b3, len, width-b3, height-len*2);
   //small lines right side
   line(width-b3, len,          width-b3+smol, len);
   line(width-b3, len+len/2,    width-b3+smol2,   len+len/2);
   line(width-b3, height-len*2, width-b3+smol,   height-len*2);
   fill(255);
   textSize(20);
   text(x,width-(b3-smol), len+len/2+6);
   
   //middle lines
   line(b3+30, len+len/2, width/2-30, len+len/2);
   line(width/2+30, len+len/2, width-b3-30, len+len/2);
   
   line(width/2, len*3-smol*3, width/2, height/2-smol*2);
   noFill();
   ellipse(width/2,height/2-smol*2, 15, 15);
    stroke(255);
    strokeWeight(.5);
    float y = dist(width/2+30, len+len/2, width-b3-30, len+len/2)/9;
  
    for(int i=1; i<=11; i++)
    {
     line(width/2+smol2/3, height/2-smol*2+i*y, width/2-smol2/3, height/2-smol*2+i*y); 
    }
    noStroke();

}

void drawDash()
{
     //dashboard
   noStroke();
   stroke(126);
   float w4 = width/4;//width/4
   float dashh= height/4;
   float bord = width*.04;
   fill(126);
   pushMatrix();
  quad(bord,height,  w4,dashh*3, w4*3,dashh*3,  width-bord,height);
  popMatrix();
  
  noStroke();
  fill(200);
  triangle(bord,height,  w4,dashh*3, w4,height);
  noStroke();

}

void drawWindow()
{
  //window
   float w4 = width/4;//width/4
float winW= width/4;
float winH = height/6;
   float len = height*.25;

noStroke();
fill(50);
quad(375, len*3, 0, w4, 0, 150, w4+w4/2, len*3);
quad(width-375, len*3, width, w4, width, 150, width-(w4+w4/2), len*3);

quad(winW, 0, width-winW, 0,width-(winW+100),  winH, winW+100, winH);
noStroke();

}

   
  