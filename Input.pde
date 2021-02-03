public boolean w, a, s, d, space, q, e, z, c;

void keyPressed()
{
  if(key == 'W' || key == 'w')
  {
    w = true;
  }
  else if(key == 'S' || key == 's')
  {
    s = true;
  }
  else if(key == 'D' || key == 'd')
  {
    d = true;
  }
  else if(key == 'A' || key == 'a')
  {
    a = true;
  }
  else if(key == ' ')
  {
    space = true;
  }
  else if(key == 'Q' || key == 'q')
  {
    q = true;
  }
  else if(key == 'E' || key == 'e')
  {
    e = true;
  }
  else if(key == 'Z' || key == 'z')
  {
    z = true;
  }
  else if(key == 'C' || key == 'c')
  {
    c = true;
  }
}

void keyReleased()
{
  if(key == 'W' || key == 'w')
  {
    w = false;
  }
  else if(key == 'S' || key == 's')
  {
    s = false;
  }
  else if(key == 'D' || key == 'd')
  {
    d = false;
  }
  else if(key == 'A' || key == 'a')
  {
    a = false;
  }
  else if(key == ' ')
  {
    space = false;
  }
  else if(key == 'Q' || key == 'q')
  {
    q = false;
  }
  else if(key == 'E' || key == 'e')
  {
    e = false;
  }
  else if(key == 'Z' || key == 'z')
  {
    z = false;
  }
  else if(key == 'C' || key == 'c')
  {
    c = false;
  }
}
