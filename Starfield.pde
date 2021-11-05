class Particle{
  
  double myx,myy,myspeed,myangle;
  int mycolor;
  
  Particle(){
    myx=300;
    myy=300;
    myspeed=((int)(Math.random()*10)+1);
    myangle=((int)(Math.random()*1000)+1);
    mycolor=color(255,0,0);
  }
  void move(){
    myx+= ((cos((float)myangle))*myspeed);
    myy+= ((sin((float)myangle))*myspeed);
  }
  void show(){
    fill(mycolor);
    ellipse((float)myx,(float)myy,10,10);
  }
}
    
  
class oddBallParticle extends Particle{
  oddBallParticle(){
     myx=300;
    myy=300;
    myspeed=((int)(Math.random()*10)+1);
    myangle=((int)(Math.random()*40)+1);
    mycolor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
}
  
  
  
  
Particle bob;
Particle[] group= new Particle[100];
  
  
void setup(){
 size(600,600); 
 bob= new Particle();
 for(int i =0; i<20;i++){
   group[i]=new oddBallParticle();
 }
 for(int i =20; i<group.length;i++){
   group[i] = new Particle();
 }

}


void draw(){
  background(0);
  for(int i =0; i<group.length;i++){
   group[i].show();
   group[i].move();
 }
  bob.show();
  bob.move();
  
}






