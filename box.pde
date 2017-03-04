class Box
{
  float _x, _y, _z;
  
  Box(float x, float y, float z)
  {
    _x = x;
    _y = y;
    _z = z;
  }
  
  void Draw()
  {
    translate(_x, _y, _z);
    fill (255, 0, 0);
    box(50, 50, 50);
    translate(-_x, -_y, -_z);
    
    Collisions();
  }
  
  void Collisions()
  {
    if(cam.position.x <= _x +50 && cam.position.x >= _x +40
    && cam.position.z <= _z +25 && cam.position.z >= _z -25
    && cam.position.y <= _y +50 && cam.position.y >= _y)
    {
      cam.position.x = _x +49;
    }
    
    if(cam.position.x <= _x -40 && cam.position.x >= _x -50
    && cam.position.z <= _z +25 && cam.position.z >= _z -25
    && cam.position.y <= _y +50 && cam.position.y >= _y)
    {
      cam.position.x = _x -49;
    }

    if(cam.position.x <= _x +20 && cam.position.x >= _x -40
    && cam.position.z <= _z -30 && cam.position.z >= _z -50
    && cam.position.y <= _y +50 && cam.position.y >= _y)
    {
      cam.position.z = _z -49;
    }
    
    if(cam.position.x <= _x +20 && cam.position.x >= _x -40
    && cam.position.z <= _z +50 && cam.position.z >= _z +30
    && cam.position.y <= _y +50 && cam.position.y >= _y)
    {
      cam.position.z = _z +49;
    }
    
    if(cam.position.x <= _x +50 && cam.position.x >= _x -50
    && cam.position.z <= _z +50 && cam.position.z >= _z -50
    && cam.position.y <= _y -50 && cam.position.y >= _y -100)
    {
      acceleration.y = acceleration.y * 0;
      velocity.y = -1;
    }
  }
}