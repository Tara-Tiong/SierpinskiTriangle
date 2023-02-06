int drag= 0;
void setup() {
  size(400, 400, P3D);
 // frameRate(60);
}

void draw() {
  background(0);
  fill(0);
  noStroke();
  translate(width/2, height/2, 0); 
  spin(mouseX, mouseY, drag);
  scale(0.5);
  rectMode(CENTER);
  stroke(255);
  Serpinski(0, 0, width/6);
  
  //bottom face
  //rectMode(CENTER);
  rotateX(PI/2);
  translate(0, -height/4, -height/4);
  Serpinski(0, 0, width/6);
  
  //left side face
  rotateY(PI/2);
  translate(-width/4, 0, -height/4);
  Serpinski(0, 0, width/6);
  
  //right side face
  translate(0, 0, height/2);
  Serpinski(0, 0, width/6);
  
  //back face
  rotateX(PI/2);
  translate(0, -height/4, height/4);
  Serpinski(0, 0, width/6);
  
  //top
   rotateY(PI/2);
  translate(height/4, 0, -height/4);
  Serpinski(0, 0, width/6);
}

void spin(int one, int two, int thr){
  rotateY(one*0.01);
  rotateX(two*0.01);
  rotateZ(thr*0.01);
}

void mouseDragged(){
  drag += 5;
  if(drag > 1000)
  drag =0;
}

void Serpinski(float x, float y, float d) {
  stroke(mouseY+50, mouseX, 50);
  rect(x, y, d, d);
  if (d > 1) {
    Serpinski( x+d, y, d/3);
    Serpinski( x- d, y, d/3);
    Serpinski( x, y+ d, d/3);
    Serpinski( x, y- d, d/3);
    Serpinski( x+ d, y+ d, d/3);
    Serpinski( x- d, y- d, d/3);
    Serpinski( x+ d, y- d, d/3);
    Serpinski( x- d, y+ d, d/3);
  }
}
