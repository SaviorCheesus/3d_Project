import queasycam.*;
Box box1;
Box box2;
Box box3;
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
  box2 = new Box(0, 100, 0);
  box3 = new Box(50, 100, 0);
  
  acceleration = new PVector(0, 0.1, 0);
  velocity = new PVector(1,1,1);
  position = new PVector(1,1,1);
}

void draw()
{
  background(0);
  fill(0,0,255);
  
  controls();
  
  box1.Draw();
  box2.Draw();
  box3.Draw();
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