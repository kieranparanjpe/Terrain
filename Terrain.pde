
import java.awt.*;

ArrayList<Object> objects = new ArrayList<Object>();

Camera cam;

int gridSize = 500;

float scale = 1.3;
float seed = 7.5;

PGraphics world;

public void setup()
{
  world = createGraphics(width, height, P3D);
  size(displayWidth, displayHeight, P2D);
  cam = new Camera();
    
  GenerateTerrain();
  
  rectMode(CENTER);
  //textAlign(CENTER);
}

public void draw()
{
  world.beginDraw();
  world.background(173, 216, 230);
  cam.Draw();
  for(int i = 0; i < objects.size(); i++)
  {
     objects.get(i).Draw(); 
  }
  
  if(q && scale > 0)
    scale -= 0.01;
  if(e)
    scale += 0.01;
    
  if(z)
    seed -= 0.05;
  if(c)
    seed += 0.05;
    
  if(space)
      GenerateTerrain();
      
  world.endDraw();
  
  image(world, 0, 0);
  
  textSize(50);
  fill(0);
  
  text("Scale: " + String.format("%.2f", scale), 100, 200);
  text("Seed: " + String.format("%.2f", seed), 100, 300);
  text("Generate: Space", 100, 400);


}

public class Transform
{
   public PVector position = new PVector();
   public PVector rotation = new PVector();
   public PVector scale = new PVector(100, 100, 100);
   
   public PVector velocity = new PVector();
   public PVector forward = new PVector();
   public PVector right = new PVector();

   public Transform(PVector pos, PVector rot, PVector scl)
   {
     position = pos;
     rotation = rot;
     scale = scl;
   }
   
   public Transform(PVector pos)
   {
     position = pos;
   }
}
