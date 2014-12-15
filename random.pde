int var=0;
int howHigh=20;
int gotOne=0;
int randXStored= int(random(9));

void setup() {
  size(400, 400);
  background(255, 255, 255);
}

void draw() {

  for (int i=0; i<howHigh; i++) {
    if (i==howHigh)
    {
      println("i= "+i);
    }
    println("randXStored= " +randXStored );
    
    int randX=int(random(9));
    println("randX      = "+randX );

    if (randX==randXStored) {
      gotOne=gotOne+1;
      println("GOT ONE!= "+gotOne );
    }
    int randXStored=randX;
  }
}
