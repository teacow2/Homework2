float canAngle;
int beamStartX, beamStartY, beamEndX, beamEndY; 
int canCount, canCountLimit; 
boolean canState, blockClick; 

void setup() {
    size(600,600);
    canState = false;   
    canCountLimit = 75; 
    canCount = 0;
    blockClick = false; 
};

void draw() {
  background(255); 
  
  fill(255,0,0);
  ellipse(300,599,150,150); 
  
  rectMode(CORNERS); 
  noStroke(); 
  
  
  canAngle = map(mouseX, 0, 599, 2.0, PI*1.35);

  translate(300, 599);
  rotate(canAngle);
  rect(-37,0, 30, 100);

  
  
  if(canState && canCount<canCountLimit) {
    fill(0,0,255);
    rect(-27, 100, 20, 800); 
    canCount++; 
  } else if (canState && canCount>=canCountLimit){
    fill(0,0,255);
    rect(-27, 100, 20, 800);
    canCount=0;  
    canState=false; 
    blockClick=false;  
  };
  
}; 

void mouseClicked() {
  if (!blockClick) {
     canState=true; 
     blockClick=true; 
  };  

};

