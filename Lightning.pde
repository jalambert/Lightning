void setup() {
  size(800, 800);
  background(4);
  //frameRate(100);
}


int xstart = 400;
int ystart = 0;
int xend = xstart;
int yend = ystart;
int c = 0;
int c2 = 0;
int x1;
int y1;
int x2;
int y2;
int x3;
int y3;

void draw() {
  noStroke();
  fill(0, 0, 0, 30);
  rect(0, 0, 800, 650);
  fill(160, 82, 45);
  noStroke();
  rect(0, 650, 800, 800);



  if (c2 == 1) {
    x1 = (int)random(0,800);//(int)(Math.random()*800);
    y1 = (int)(Math.random()*380)+250;
    x2 = (int)(Math.random()*800);
    y2 = (int)(Math.random()*380)+250;
    x3 = (int)(Math.random()*800);
    y3 = (int)(Math.random()*380)+250;

    c2 = 0;
  }
  if (c == 1) {
    bolt();
    if (yend >= 650 || xend > 825 || xend < -25) {
      xstart = (int)(Math.random()*500)+150;
      ystart = 0;
      xend = xstart;
      yend = 0;
      c = 0;

      noStroke();
      fill(255);
      rect(0, 0, 800, 650);
    }
  }

  phantom(x1, y1);
  phantom(x2, y2);
  phantom(x3, y3);

  //clouds
  noStroke();
  fill(30, 30, 30);
  ellipse(250, 40, 300, 200);
  ellipse(130, 40, 180, 200);
  ellipse(570, 0, 500, 200);
  ellipse(670, 60, 200, 200);
  ellipse(500, 90, 250, 200);
  ellipse(30, 30, 100, 100);

  //house
  stroke(0);
  strokeWeight(10);
  //chimney
  fill(255, 150, 0);
  rect(85, 300, 80, 150);
  //roof
  fill(30, 30, 30);
  triangle(30, 450, 390, 450, 210, 280);
  rect(30, 455, 360, 0);
  //body
  fill(255, 150, 0);
  rect(60, 460, 300, 190);
  //window
  fill(255);
  rect(100, 515, 76, 76);
  line(100, 515+38, 175, 515+38);
  line(138, 515, 138, 515+75);
  //door
  rect(230, 500, 90, 150);
  noStroke();
  fill(0);
  ellipse(250, 580, 15, 15);

  //System.out.println(mouseX + " " + mouseY);
}

void mousePressed() {
  c = 1;
  c2 = 1;
}

void bolt() {
  strokeWeight(3);
  stroke(200, 200, 255);
  xend = xend + (int)(Math.random()*40)-20;
  yend = yend + (int)(Math.random()*30);
  line(xstart, ystart, xend, yend);
  xstart = xend;
  ystart = yend;
}

void phantom(int x, int y) {
  noFill();
  stroke(4);
  strokeWeight(10);
  //face
  point(x+10, y-70);
  point(x+50, y-70);
  arc(x+30, y-90, 80, 80, PI/3, (2*PI/3));
  line(x+30, y-80, x+10, y-90);
  line(x+30, y-80, x+50, y-90);
  //bumps
  arc(x, y, 20, 20, 0, PI);
  arc(x+20, y, 20, 20, 0, PI);
  arc(x+40, y, 20, 20, 0, PI);
  arc(x+60, y, 20, 20, 0, PI);
  //body
  line(x-10, y, x-10, y-70);
  line(x+70, y, x+70, y-70);
  arc(x+30, y-70, 80, 80, PI, 2*PI);
}
