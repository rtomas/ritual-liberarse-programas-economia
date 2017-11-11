int paso = 1;
int[] pX, pY, movX, movY;
int cont = 0;

void setup() {
  size(500, 500);
  background(255);
  pX = new int[10000];
  pY= new int[10000];
  movX = new int[10000];
  movY = new int[10000];
}

void draw() {
  println(cont);
  if (paso == 1) {
    pX[cont] = int(random(width));
    pY[cont] = int(random(height));
    movX[cont] = int(random(-10, 10));
    movY[cont] = int(random(-10, 10));

    strokeWeight(random(1, 3));
    stroke(random(200, 255), 0, 0);
    line(pX[cont], pY[cont], pX[cont] + movX[cont], pY[cont] + movY[cont]);

    cont++;
    if (cont == 10000) {
      paso = 2;
    }
  } else {
    if (cont >=0) {
      noFill();
      ellipseMode(CORNER);
      stroke(0, random(200, 255), 0);
      ellipse(pX[cont], pY[cont], movX[cont], movY[cont]);
      cont--;
    }
  }
}

void keyPressed() {
  paso++;
  if (paso == 4) {
    background(255);
    paso = 1;
  }
}

void mousePressed() {
  saveFrame();
}