//method to draw the ship log
void drawShipLog()
{
  rectMode(CENTER);
  textAlign(LEFT);
 stroke(100);
 fill(0);
 rect(width-350,height-100,135,150); 
 fill(225);
 textSize(15);
 text("Ship Log", width-400, height - 160);
 if(commands.size()>=0)
 { 
   //removes the last string from the list if the list gets to the size 13
   if(commands.size()>=13)
   {
     commands.remove(0);
   }
   //prints the stringlist
   for(int i=0; i<commands.size(); i++)
   {
 String item = commands.get(i);
 textSize(10);
 text(item, width-412,(height-140)+(i*10));
 }
 }
}