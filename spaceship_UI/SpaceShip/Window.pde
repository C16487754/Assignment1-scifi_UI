void drawCmd()
{
  rectMode(CENTER);
  textAlign(LEFT);
 stroke(100);
 fill(0);
 rect(width-350,height-100,135,150); 
 fill(225);
 textSize(15);
 text("Ship Log", width-400, height - 160);
 if(notes.size()>=0)
 { 
   if(notes.size()>=13)
   {
     notes.remove(0);
   }
   for(int i=0; i<notes.size(); i++)
   {
 String item = notes.get(i);
 textSize(10);
 text(item, width-412,(height-140)+(i*10));
 }
 }
 

  println(notes);
}