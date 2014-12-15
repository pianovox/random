// Inspired by Zan :) I want to count how many times
// identical random numbers are generated in a row


int howHigh=20;  //how many numbers to generate
int gotOne=0;    //did I get an identical pair?
int randXStored= int(random(9));  //gotta start somewhere...

void setup() {
  size(400, 400);
  background(255, 255, 255);
}

void draw() {
//-----------------------
// I only want to do this loop 20 times \
//(or whatever is declared in the variable "howHigh")

  for (int i=0; i<howHigh; i++) {
    if (i==howHigh)
    {
      println("i= "+i); //keeping track
    }
    println("randXStored= " +randXStored );  //we compare against this
    
    int randX=int(random(9));
    println("randX      = "+randX );  //a new random number

    if (randX==randXStored) {
      
      gotOne=gotOne+1;  //PROBLEM HERE!! I want to keep track of how 
                        //many in a row. When I change this to 
                        // gotOne=gotOne++; this number is stuck at zero?!?!
      
      
      println("GOT ONE!= "+gotOne );
    }
    int randXStored=randX;  //stores the number for comparison next time
                            //BUT I WANT TO STOP AFTER 20 times (howHigh)
  }
}
