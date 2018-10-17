NormalParticle[] stars;
backgroundStars[] bStars;
float zoom;
void setup(){
  size(600,600);
  background(0);

  stars = new NormalParticle[800];
  for(int i=0; i < stars.length; i++){
    stars[i] = new NormalParticle();    
  }
  
  bStars = new backgroundStars[00];
  for(int j=0; j < bStars.length; j++){
    bStars[j] = new backgroundStars();
  }
}

void draw(){
 fill(0,0,0,70);
 rect(0,0,600,600);
 zoom = map(mouseX, 0, width, 0, 5);
 translate(width/2,height/2);
  for(int i=0; i < stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
  for(int j=0; j < bStars.length; j++){
    bStars[j].show();
  }

}





class backgroundStars{
  
  float bX, bY, r;
  
  backgroundStars(){
    bX = (float)(Math.random()*width-width/2);
    bY = (float)(Math.random()*height-height/2);
    r = (float)(Math.random()*2);
  }
  
  void show(){
    noStroke();
    fill(255);
    ellipse(bX, bY, r, r);
  }
}


class NormalParticle
{
  double myX, myY, velocity, acceleration, angle;
  int Color;
  
  NormalParticle(){
    myX = 0;
    myY = 0;
    Color = 255;
    velocity = Math.random()*1;
    acceleration = 1.05;
    angle = (Math.random() * (Math.PI * 2));
    
  }
  
  void move(){
    velocity =velocity*acceleration;
    
    myX += (Math.cos(angle) * velocity);
    myY += (Math.sin(angle) * velocity);
    //System.out.println(velocity);
    
    
    if (myX > width || myX < -width){
      myX = 0;
      myY = 0;
      angle = (Math.random() * (Math.PI * 2));
      velocity = Math.random()*1;
      
    }
    if (myY > height || myY < -height){
      myX = 0;
      myY = 0;
      angle = (Math.random() * (Math.PI * 2));
      velocity = Math.random()*1;
      

    }
    
  }
  
  void show(){
    float starSizeX = map((float)myX, 0, width, 0, 8);
    float starSizeY = map((float)myY, 0, width, 0, 8);
    noStroke();
    fill(255);
    ellipse((float)myX,(float)myY,starSizeX,starSizeX);
    ellipse((float)myX,(float)myY,starSizeY,starSizeY);
  }
}


interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

