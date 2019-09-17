class Star{
  //sets initial x, y of the stars
  float x;
  float y;
  float z;
  
  float pz;
  
  Star(){
    //randomizes where stars appear
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    
    pz = z;
  }
 
  void update(){
    //speed based on where star is from center
    z = z - speed;
    
    if(z < 1){
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  
  void show(){
    fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, width);
    
    float r = map(z, 0, width, 16, 0);
    //ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, width);   
    
    stroke(255);
    line(px, py, x, y);
    strokeWeight(4);
    
    pz = z;
  }
}
