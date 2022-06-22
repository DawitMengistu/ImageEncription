PImage img;
PGraphics pg;
int W, H;
int a=0, i=0, s=0;
int oneTimeFileOpen=2, oneTimeEncrypt=2;
String path;
int R2;
Encrypt e;
Decrypt d;
InputEncrypt ie;
InputDecrypt id;
UI ui;


// all above are to Encrypt


PImage img2;
String path2;
PGraphics pg2;
int W2, H2;
int oneTimeFileOpen2=-1;
int R;
String[] Code;
String[] Code2;
String CodesFromTheImage="";
String Check="";
boolean isbig=false;
int page,time;

void settings() {
  fullScreen();
}

void setup() {
  
  surface.setSize (600, 250);
  surface.setLocation (150, 150);
  e = new Encrypt();
  d = new Decrypt();
  ie = new InputEncrypt();
  id = new InputDecrypt();
  ui = new UI();
  Code = loadStrings ("Code2.txt");
  Code2 = loadStrings ("Code3.txt");
  R =1;
  ui.lookSetup();
}

void draw() {
 
  ui.look();
  e.onDraw();
  d.onDraw();
  ie.oneDrawInput();
  id.oneDrawInput();
  
  ui.onHover();
  ui.onHover2();
}




void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    path = selection.getAbsolutePath();
  }
} 

// down for decrypt


void fileSelected2(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    path2 = selection.getAbsolutePath();
  }
}

//void fileSelected11(File selection) {
//  if (selection == null) {
//    println("Window was closed or the user hit cancel.");
//  } else {
//    data = selection.getAbsolutePath();
//  }
//}

void mouseReleased() {
  
  if (mouseX>width/2-180 && mouseX<width/2-60 && mouseY>height/2-80 && mouseY<height/2+100) {
    path=null;
    oneTimeFileOpen=0;
    oneTimeEncrypt=0;
  }

  if (mouseX>width/2+130-50 && mouseX<width/2+130+50 && mouseY>height/2-80 && mouseY<height/2+100) {
    oneTimeFileOpen2=0;
  }
   if (mouseX>width-125 && mouseX<width-70 && mouseY>20 && mouseY<40) {
   link("http://www.monkeytype.com");
   }
   if (mouseX>width-57 && mouseX<width-30 && mouseY>20 && mouseY<40){
   exit();
   }
}
