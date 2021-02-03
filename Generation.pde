
public void GenerateTerrain()
{
  objects = new ArrayList<Object>();  
  for(int x = 0; x < 30; x++)
  {
    for(int y = 0; y < 30; y++)
    {
      float n = (int)(noise(x / seed, y / seed) * 10) / scale;
      PVector pos = new PVector(x * gridSize, n * gridSize + height, y * gridSize);
      
      Transform t = new Transform(pos.copy());
      float scale = 10 - n;
      t.scale = new PVector(gridSize, gridSize * scale, gridSize);
    
      objects.add(new Cube(color(0, 255, 0), t));

    }
  }
}
