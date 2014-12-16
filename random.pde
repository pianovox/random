// identical random numbers are generated in a row

int howHigh=100;  //how many numbers to generate
int randStored=int(random(0, 9));
int gotOne=1; //did I get an identical pair?
int gotOneStored=0;
int total=0;
int streak=0; 

void setup() {
  size(200, 200);
  background(255, 255, 255);

  for (int i=0; i<howHigh; i++) {   //makes a loop
    int rand=int(random(0, 9));     //generates a new random
    println(rand);                  //prints it
    if (rand==randStored) {         //compares against seed and
      gotOne++;                     //increments gotOne if it's the same
      total++;
      if (gotOne>streak) {
        streak=gotOne;
      }
      println("GOT ONE!!!    "+gotOne + " " +total);
    } else {
      gotOne=0;                      //or else it's reset. WHERE IN THE LOOP DOES THIS GO?
      randStored=rand;
    }
  }
  println("LONGEST STREAK = "+streak);
}

void draw() {
}
