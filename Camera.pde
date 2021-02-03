
public class Camera extends Object
{
  Robot robot;
  
  float camx;
  float camy;
  float camz;
  
  int lastShot = 0;
  int powerUpTime = 6000;
  public int fireRate = 500;
  public int lastPowerUp;
       
  public Camera()
  {
    try{
      robot = new Robot();
    }
    catch(Exception e){}
    
    camx = width / 2;
    camy = height / 2;
    camz = - (width / 2) - 1;
    
    transform.position.x = width / 2;
    transform.position.y = 200;
    
    transform.forward = new PVector(0, 0, 1);
    transform.right = new PVector(1, 0, 0);
    
    transform.scale = new PVector(240, 240, 300);
    
   }
  
  @Override
  public void Draw()
  {
    Move();
    world.pointLight(255, 255, 255, transform.position.x, transform.position.y, transform.position.z);
    world.camera(transform.position.x, transform.position.y, transform.position.z, camx, camy, camz, 0, 1, 0);
  }
  
  private void Move()
  {
    float x = 0;
    float y = 0;
    if(d) 
      x++;
    if(a)
      x--;
    if(w)
      y++;
    if(s)
      y--;
      
    transform.velocity= (transform.forward.copy().mult(y));
    transform.velocity.add(transform.right.copy().mult(x));
   
    transform.position.x += transform.velocity.x * 40;
    transform.position.z += transform.velocity.z * 40;
   
    transform.rotation.y += ((mouseX - pmouseX) < width / 2 && (mouseX - pmouseX) > -width / 2) ? (mouseX - pmouseX) * 0.01 : 0;
    transform.rotation.x += (mouseY - pmouseY) * 0.01;
   
    if(transform.rotation.x > radians(89))
      transform.rotation.x = radians(89);
     
    if(transform.rotation.x < radians(-89))
        transform.rotation.x = radians(-89);
    
    transform.forward.x = cos(transform.rotation.y);
    transform.forward.y = tan(transform.rotation.x);
    transform.forward.z = sin(transform.rotation.y);
   
    
    transform.right.x = cos(transform.rotation.y + radians(90));
    transform.right.z = sin(transform.rotation.y + radians(90));
   
    if(mouseX > width - 2) robot.mouseMove(3, mouseY);
    if(mouseX < 2) robot.mouseMove(width-3, mouseY);
    
    camx = transform.position.x + (transform.forward.x * 100);
    camy = transform.position.y + (transform.forward.y * 100);
    camz = transform.position.z + (transform.forward.z * 100);
  }
}
