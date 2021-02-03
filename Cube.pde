public class Cube extends Object
{
  protected color colour;
  
  public Cube(color c)
  {
    super();
    colour = c;
  }
  
  public Cube(color c, Transform t)
  {
    super(t);
    colour = c;
  }
  
  @Override
  public void Draw()
  {
    world.pushMatrix();
  
    world.translate(transform.position.x, transform.position.y + transform.scale.y / 2, transform.position.z);
    world.rotateY(transform.rotation.y);
    world.rotateX(transform.rotation.x);
    world.rotateZ(transform.rotation.z);
    
   // world.stroke(8);
    world.fill(colour);
    world.strokeWeight(0);
  
    world.box(transform.scale.x, transform.scale.y, transform.scale.z);
    
    world.popMatrix();
  }
  
}
