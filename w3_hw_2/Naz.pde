class Naz {
  float x;
  float y;
  float tx;
  float ty;
  
  int r;
  int g;
  int b;
  float a;
  
  Naz()  {
    x=width/2;
    y=height/2;
    
    tx=9;
    ty=0;
    
    r=int(random(255));
    g=int(random(255));
    b=int(random(255));
    a=255;
    
  }
  
   void display() {
   stroke(r,g,b,a);
   point(x,y);
   
   // change radius according to noise
   float r  = map(noise(tx),0,1,0,200);
   a = map(noise(ty),0,1,10,200);
   ellipse(x,y,r,r);
   rect(x/2,y/2,r,r);
   rect(1.5*x,1.5*x,r,r);
  }
  
  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.01;
    ty += 0.01;
  }

}