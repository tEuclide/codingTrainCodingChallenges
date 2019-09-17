/* Based on the Coding Challenge from the YouTube Channel "The Coding Train"
   the link to the specific video is 
   https://www.youtube.com/watch?v=17WoOqgXsRM&list=PLRqwX-V7Uu6ZiZxtDDRCi6uhfTH4FilpH */

//sets the number of stars to display
Star[] stars = new Star[1000];

float speed;

//sets up the canvas and calls the star function with how many stars in array
void setup() {
  //sets the window size
  //size(800,800);
  fullScreen();
  
  //creates a star based on number set above
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

//updates the stars and speed
void draw() {
  //determined by where mouse cursor is located
  speed = map(mouseX*2, 0, width, 0, 20);
  
  //sets background color
  background(0);
  
  //sets center to center of window
  translate(width/2, height/2);
  
  //updates the stars
  for (int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
  }
}
