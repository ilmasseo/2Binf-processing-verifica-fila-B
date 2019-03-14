Personaggio harry;
Veicolo broom;

class Personaggio {
  PShape forma;
  Personaggio() {
    forma= loadShape("harry.obj");
    forma.setFill(color(#050505));
  }
  void disegna(float x, float y ) {
    shape(forma, x, y);
  }
}



class Veicolo {
  PShape forma;
  Veicolo () {
    forma= loadShape("broom.obj");
    forma.setFill(color(#25E345));
  }
  void disegna(float x, float y) {
    shape(forma, x, y);
  }
}
PShape Veicolo;
float movimentox, movimentoy;

void movimentoy() {
  if (movimentoy>= width*0.8) {
    movimentoy = width*0.8;
  } else {
    movimentoy += 4;
  }
}



void setup() {
  fullScreen(P3D);
  loadShape("harry.obj");
  loadShape("broom.obj");
  harry = new Personaggio();
  broom = new Veicolo();
}

void draw() {
  background(#7AFF5D);
  lights();
  broom.disegna(width*.5, height*.9);
  harry.disegna(width*.5, movimentoy );
  movimentoy();
}

