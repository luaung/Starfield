Particle[] stars;

void setup(){
  size(600,600);
  background(0);

  stars = new Particle[800];
    stars[0] = new JumboParticle();
  for(int i=1; i < stars.length; i++){
    stars[i] = new NormalParticle();    
  }

  
 
}

void draw(){
 //opacity = map(mouseX,-width/2,width/2,30,80);
 fill(0,0,0,75);
 rect(0,0,600,600);

 translate(width/2,height/2);
  for(int i=0; i < stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
  

}








class NormalParticle implements Particle
{
  double myX, myY, velocity, acceleration, angle;
  int Color;
  
  NormalParticle(){
    myX = 0;
    myY = 0;
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
	public void move();
	public void show();

}
class OddballParticle 
{
	//your code here
}
class JumboParticle extends NormalParticle
{
	
	JumboParticle(){   
 	}

	void show(){
    	float starSizeX = map((float)myX, 0, width, 0, 40);
    	float starSizeY = map((float)myY, 0, width, 0, 40);
    	noStroke();
    	fill(66, 134, 244);
    	ellipse((float)myX,(float)myY,starSizeX,starSizeX);
    	ellipse((float)myX,(float)myY,starSizeY,starSizeY);
  }
}

