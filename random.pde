int randx=0;
int randy=0;
int howHigh=100;
int howMany=0;


void setup() {
  size(400, 400);
}



void draw() {
  fill(255 );
  rect(150, 150, 20, 20);

  for (int i=0; i<howHigh; i=i++) {
    if (howMany<5) {

      randx=int(random(0, 9));
      int randStored= randx;

      randy=int(random(0, 9));

      if (randStored == randy) {
        howMany=howMany+1;
      }
      ellipse (howMany*10, 20, 10, 20);

      rect (i*10, 20, 10, 20);
    }

    if (howMany==5) {
      println("howMany =" +howMany);
      println("i= " +i);
    }
  }
}
