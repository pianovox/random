// Inspired by Zan :) I want to count how many times
// identical random numbers are generated in a row


int howHigh=10;  //how many numbers to generate


int seed= int(random(9));  //gotta start somewhere...
int newRandStored=0;
int gotOne=0; //did I get an identical pair?
int gotOneStored=0;
int status=0;

void setup() {
  size(1000, 400);
  background(255, 255, 255);


  for (int i=0; i<howHigh; i++) {    //makes a loop
    println(i);                      //prints loop number
    int newRand=int(random(9));      //generates a new random
    newRandStored=newRand;           //stores the new number
    if (newRand==seed) {             //compares against seed and
      gotOne++;                      //increments gotOne if it's the same
      if (gotOne>gotOneStored) {     //if gotOne is biggest to date 
        gotOneStored=gotOne;         //gotOneisSTORED
        println("gotOne =" +gotOne );//and logged
      } else {
        gotOne=0;                    //or else it's reset. WHERE IN THE LOOP DOES THIS GO?
      }
    }
  }
}
