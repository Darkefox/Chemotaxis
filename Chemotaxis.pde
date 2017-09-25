Walker[] aBunch;
void setup()
{
  size(500,500);
  aBunch= new Walker[300];
  for (int i=0;i< aBunch.length;i++)
  {
    aBunch[i] = new Walker();
  }
}
void draw() 
{
  fill(50,50,50,10);
  rect(0,0,500,500);
  for (int i = 0; i< aBunch.length;i++)
  {
    aBunch[i].show();
    aBunch[i].walk();
  }

}
class Walker
{
  int myX;
  int myY;
  int sizeX,sizeY;
  Walker()
  {
    myX=myY=250;
    sizeX=sizeY=30;
  }
  void show()
  {
    noStroke();
    //stroke(200);
    if ( dist(myX,myY,mouseX,mouseY) < 15)
    {
      fill((int)(Math.random()*50)+100);
    }
    else 
    {
      fill(250);
    }
    ellipse(myX,myY,30,30);
  }
  void walk()
  {

    if (mousePressed)
    {
      myX=myX+0;
      myY=myY+0;
    }
    else
    {
      if (mouseX<250 && mouseY <250)
      {
        myX= myX+(int)(Math.random()*5)-3;
        myY= myY+(int)(Math.random()*5)-3;
      }
      else if(mouseX>250 && mouseY <250)
      {
        myX= myX+(int)(Math.random()*5)-1;
        myY= myY+(int)(Math.random()*5)-3;
      }
      else if(mouseX<250 && mouseY >250)
      {
        myX= myX+(int)(Math.random()*5)-3;
        myY= myY+(int)(Math.random()*5)-1;
      }
      else if(mouseX>250 && mouseY>250)
      {
        myX= myX+(int)(Math.random()*5)-1;
        myY= myY+(int)(Math.random()*5)-1;
      }
    }
  }
}