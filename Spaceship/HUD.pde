void drawHUD()
{
  strokeWeight(1);
  stroke(255);
  float border = width * 0.1f;
  
 
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
   fill(0);
   ellipse(width/2,height/2-smol*2, 15, 15);
    stroke(255);
    strokeWeight(.5);
    float y = dist(width/2+30, len+len/2, width-b3-30, len+len/2)/9;
  println(y);
  
    for(int i=1; i<=11; i++)
    {
     line(width/2+smol2/3, height/2-smol*2+i*y, width/2-smol2/3, height/2-smol*2+i*y); 
    }
    
  
   
   //dashboard
   strokeWeight(10);
   stroke(126);
   float w4 = width/4;//width/4
   float dashh= height/4;
       float bord = width*.04;
       line(bord, height,w4,dashh*3 );
       line(w4, dashh*3,w4*3, dashh*3 );
       line(width-bord, height, w4*3, dashh*3);
       
       
//window
line(0, border, width, border);
line(w4*3, len*3, width, w4);
line(w4, len*3, 0, w4);

   
}



   
   