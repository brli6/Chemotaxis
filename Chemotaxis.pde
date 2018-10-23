Bee[] bob;
int x;
int y;
void setup()   
{     
  //initialize bacteria variables here 
  size(600,600);
  frameRate(20);
  bob = new Bee[5];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bee();
  }
}   
void draw()   
{    
  //sky
  background(173,216,230);
  //grass
  fill(34,139,34);
  noStroke();
  rect(0,500,600,100);
  fill(255);
  //cloud 1
  ellipse(70,100,50,40);
  ellipse(100,100,50,75);
  ellipse(130,100,50,60);
  ellipse(150,100,60,40);
  //cloud 2
  ellipse(270,75,50,40);
  ellipse(300,75,50,60);
  ellipse(330,75,50,75);
  ellipse(350,75,60,40);
  //cloud 3
  ellipse(450,125,70,50);
  ellipse(470,125,50,70);
  ellipse(500,125,60,90);
  ellipse(525,125,70,60);
  //beehive
  fill(255,255,21);
  stroke(218,165,32);
  ellipse(mouseX,mouseY+60,60,25);
  ellipse(mouseX,mouseY+50,90,30);
  ellipse(mouseX,mouseY+35,115,40);
  ellipse(mouseX,mouseY+20,135,45);
  ellipse(mouseX,mouseY,145,50);
  ellipse(mouseX,mouseY-20,135,45);
  ellipse(mouseX,mouseY-35,115,40);
  ellipse(mouseX,mouseY-50,90,30);
  ellipse(mouseX,mouseY-60,60,25);
  fill(153,101,21);
  ellipse(mouseX,mouseY,60,60);
  //branch
  noStroke();
  rect(mouseX,mouseY-90,5,30);
  rect(mouseX-50,mouseY-100,100,15);
  //ellipse(mouseX-65,mouseY-98,50,15);
  //rect(mouseX+20,mouseY-105,15,10);*/
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
   //move and show the bacteria
  }
}
class Bee
{
  int myX , myY;
  Bee()
  {
    myX = myY = 250;
  }
void walk()
{
  for(int i = 0; i < bob.length; i++)
  {
    if(mouseX + 10 > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-4;
  }
  for(int i = 0; i < bob.length; i++)
  {
    if(mouseY + 10 > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-4;
  }
}
/*void fly()
{
  x = x + (int)(Math.random()*20);
  y = y + (int)(Math.random()*20);
}*/
void show()
{
   strokeWeight(1);
   stroke(0);
   //stinger (start at 30)
   fill(0);
   triangle(myX-10,myY-5,myX-10,myY+5,myX-22,myY); 
   //antenna
   strokeWeight(1.5);
   line(myX+15,myY-10,myX+10,myY-25);
   line(myX+15,myY-10,myX+20,myY-25);
   //wings
   strokeWeight(1);
   fill(153,238,255);
   ellipse(myX-6,myY-17,10,20);
   ellipse(myX,myY-17,10,20);
   //body
   fill(255,255,25);
   ellipse(myX,myY,30,25);
   //head
   ellipse(myX+15,myY-10,25,20);
   //eyes
   fill(0);
   ellipse(myX+10,myY-12,2,6);
   ellipse(myX+20,myY-12,2,6);
   //stripes
   strokeWeight(3);
   line(myX,myY-11,myX,myY+10);
   line(myX-10,myY-7,myX-10,myY+7);
   line(myX+10,myY+1,myX+10,myY+7);
}
}