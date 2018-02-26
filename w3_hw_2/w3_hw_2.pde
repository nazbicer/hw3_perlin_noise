ArrayList<Naz> clones = new ArrayList<Naz>();
int numNaz = 10;

void setup() {
  size(600, 600);
  background(#030000);
  
  for (int i = 0; i < numNaz; i++) {
   Naz c = new Naz();
    c.r = 254;
    c.g = 34;
    c.b = 0;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones.add(c);
  }
}

void draw() {

  for (int i = 0; i < numNaz; i++) {
    clones.get(i).step();
    clones.get(i).display();
  }
}