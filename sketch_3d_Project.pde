import queasycam.*;
Box box1;
Box box2;
Box box3;
Box box4;
Box box5;
Box box6;
Box box7;
Box box8;
Box box9;
Box box10;
Box box11;
Box box12;
Box box13;
Box box14;
Box box15;
PVector acceleration, velocity, position;

QueasyCam cam;

void setup()
{
  fullScreen(P3D);
  
  noCursor();
  cam = new QueasyCam(this);
  cam.speed = 3;
  cam.sensitivity = 1;
  perspective(PI/2.25, (float)width/height, 0.01, 10000);
  
  box1 = new Box(100, 100, 0);
  box2 = new Box(100, 100, 50);
  box3 = new Box(100, 100, 100);
  box4 = new Box(50, 100, 0);
  box5 = new Box(50, 100, 50);
  box6 = new Box(50, 100, 100);
  box7 = new Box(0, 100, 0);
  box8 = new Box(0, 100, 50);
  box9 = new Box(0, 100, 100);
  box10 = new Box(50, 100, 250);
  box11 = new Box(50, 100, 500);
  box12 = new Box(50, 100, 750);
  box13 = new Box(50, 50, 1000);
  box14 = new Box(50, 0, 1250);
  box15 = new Box(50, -100, 1500);
  
  acceleration = new PVector(0, 0.1, 0);
  velocity = new PVector(1,1,1);
  position = new PVector(1,1,1);
}

void draw()
{
  background(0, 13, 26, 1);
  
  controls();
  stroke(100);
  strokeWeight(5);
  fill (199, 214, 210);
  box1.Draw(); box2.Draw(); box3.Draw();
  box4.Draw(); box5.Draw(); box6.Draw();
  box7.Draw(); box8.Draw(); box9.Draw();
  
  stroke(1, 3);
  fill (250, 0, 0);
  box10.Draw();
  box11.Draw();
  box12.Draw();
  
  box13.Draw();
  box14.Draw();
  box15.Draw();
}


void controls()
{
  if (keyPressed == true)
  { 
    if (key == 'w')
    {

    }
    else if (key == 'a')
    {

    }
    else if (key == 's')
    {

    }
    else if (key == 'd')
    {
      
    }
    else if(key == ' ')
    {
     acceleration.y = acceleration.y * 0;
     velocity.y = velocity.y * 0;
     acceleration.y = -25;
    }
  }
  else
  {
    acceleration.y = 1;
  }
   
  {
  velocity.add(acceleration);
  position.add(velocity);
  cam.position.y = position.y; 
  }
}