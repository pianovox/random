// identical random numbers are generated in a row

int howHigh=100;                //how many numbers to generate
                                //set this 
int randStored=int(random(9));  //a number to start with
int gotOne=1;                   //did I get an identical pair?
int gotOneStored=0;
int total=0;
int streak=0; 

PFont f;
string enterNumberToRun = "";
string runThisNumber = "";


void setup() {
  size(200, 200);
  background(255, 255, 255);
  f = createFont("Arial", 16);
  int indent = 25;
  
  textFont(f);
  fill(0 );
  

text("How many numbers to run. \nPress enter,indent, 40);
text("Input: " + enterNumberToRun, indent, 190);
text("Saved text: " +runThisNumber, indent.230);


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

void keyPressed(){
  if (key == '\n') {
    enterNumberToRun = runThisNumber;
    runThisNumber = "";
  } else {
    typing = typing + key;
