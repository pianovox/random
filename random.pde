// Inspired by Zan :) I want to count how many times
// identical random numbers are generated in a row


int howHigh=200;  //how many numbers to generate
int gotOne=0;    //did I get an identical pair?
int randXStored= int(random(9));  //gotta start somewhere...
int status=0;

void setup() {
  size(1000, 400);
  background(255, 255, 255);
  
  // I only want to do this loop 20 times \
//(or whatever is declared in the variable "howHigh")

  for (int i=0; i<howHigh; i++) {
    status=i;
    if (i==howHigh)
    {
      println("i= "+i); //keeping track
    }
    println("randXStored= " +randXStored );  //we compare against this
    
    int randX=int(random(9));
    println("randX      = "+randX );  //a new random number

    if (randX==randXStored) {
      
      gotOne++;  //PROBLEM HERE!! I want to keep track of how 
                        //many in a row. When I change this to 
                        // gotOne=gotOne++; this number is stuck at zero?!?!
      
      
      println("GOT ONE!= "+gotOne );
    }
    
    
fill(255,0,0 );
ellipse(gotOne*21,20,20,20);

rect(status,30,1,1);

    int randXStored=randX;  //stores the number for comparison next time
                            //BUT I WANT TO STOP AFTER 20 times (howHigh)
  }
  
}

void draw() {
//-----------------------

}
