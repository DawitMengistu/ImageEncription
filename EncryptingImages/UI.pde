class UI {
  int Box, BoxStroke, BoxStroke2, BoxStroke3;
  int Box2, BoxStroke4, BoxStroke5, BoxStroke6;
  float textsize2, textsize;
  float about, exit;
  void lookSetup() {
    Box=34;
    BoxStroke=31;
    BoxStroke2=31;
    BoxStroke3=31;
    textsize=20;

    Box2=34;
    BoxStroke4=31;
    BoxStroke5=31;
    BoxStroke6=31;
    textsize2=20;

    about = 80;
    exit = 80;
  }

  void look() {
    background(31);
    if (page==0){
    firstRect();
    secondRect();
    TopWindow();
    hoverAbout();
    }
    if (page==1){
    time++;
    background(31);
    textAlign(CENTER);
    textSize(24);
    fill(255, 63, 73);
    text("Not an image file!" , width/2 , height/2);
    if (time>=100){
      time=0;
      page =0;
    }
    }
    if (page ==2){
        time++;
    background(31);
    textAlign(CENTER);
    textSize(24);
    fill(255, 63, 73);
    text("File to big!" , width/2 , height/2);
    if (time>=100){
      time=0;
      page =0;
    }
    
     if (page ==3){
        time++;
    background(31);
    textAlign(CENTER);
    textSize(24);
    fill(255, 63, 73);
    text("File to big!" , width/2 , height/2);
    if (time>=100){
      time=0;
      page =0;
    }
     }
    }
  }
  void TopWindow() {
    fill(about);
    textSize(13);
    text("About", width-115, 30);
    fill(exit);
    text("Exit", width-60, 30);
  }
  void secondRect() {
    rectMode(CENTER);
    fill(Box2, Box2, Box2);
    stroke(BoxStroke4, BoxStroke5, BoxStroke6);
    strokeWeight(2);
    rect ( width/2+130, height/2-25, 50, 70  );
    stroke(242, 63, 73);
    rect ( width/2+120, height/2-15, 50, 70, 7, 7, 7, 7);
    line ( 166, 92, 195, 92);
    line ( 166, 92+12, 195, 92+12);
    line ( 166, 92+24, 183, 92+24);
    fill(242, 63, 73);
    textAlign(CENTER);
    textSize(textsize2);
    text(" Decrypt Image", width/2+120, height/2+56);
    fill(BoxStroke4+90, BoxStroke5+29, BoxStroke6+39);
    textSize(10);
    textAlign(LEFT);
    text("1 0 1 0", 403, 90);
    text("1 1 0 1", 403, 105);
    text("0 0 1 0", 403, 120);
    text("1 0 0", 403, 135);
  }
  void firstRect() {
    rectMode(CENTER);
    fill(Box, Box, Box);
    stroke(BoxStroke, BoxStroke2, BoxStroke3);
    strokeWeight(2);
    rect ( width/2-110, height/2-25, 50, 70  );
    stroke(242, 63, 73);
    rect ( width/2-120, height/2-15, 50, 70, 0, 0, 7, 7);
    fill(242, 63, 73);
    textAlign(CENTER);
    textSize(textsize);
    text(" Encrypt Image", width/2-120, height/2+56);
  }

  void onHover() {
    if (mouseX>width/2-180 && mouseX<width/2-60 && mouseY>height/2-80 && mouseY<height/2+100) {
      if (BoxStroke<130)
        BoxStroke+=5;
      BoxStroke2 = 34;
      BoxStroke3= 34;
      Box=40;
      if (textsize<21)
        textsize+=0.1;
      //background(255);
    } else {
      if (BoxStroke>35)
        BoxStroke-=8;
      BoxStroke2=34;
      BoxStroke3=34;
      Box=34;
      if (textsize>=20)
        textsize-=0.1;
    }
  }

  void onHover2() {
    if (mouseX>width/2+130-50 && mouseX<width/2+130+50 && mouseY>height/2-80 && mouseY<height/2+100) {
      if (BoxStroke4<130)
        BoxStroke4+=5;
      BoxStroke5 = 34;
      BoxStroke6= 34;
      Box2=40;
      if (textsize2<21)
        textsize2+=0.1;
      //background(255);
    } else {
      if (BoxStroke4>35)
        BoxStroke4-=8;
      BoxStroke5=34;
      BoxStroke6=34;
      Box2=34;
      if (textsize2>=20)
        textsize2-=0.1;
    }
  }
  void hoverAbout() {
    //      fill(about);
    //  textSize(13);
    //  text("About" , width-115 , 30);
    //  fill(exit);
    //text("Exit" , width-60 , 30);
    if (mouseX>width-125 && mouseX<width-70 && mouseY>20 && mouseY<40) {
      cursor(HAND);
      about=255;
    }
    else if (mouseX>width-62 && mouseX<width-30 && mouseY>20 && mouseY<40) {
      cursor(HAND);
      exit = 255;
    }
    else{
    cursor(ARROW);
    about=80;
    exit=80;
  }
  }
  void hoverExit() {
  }
}
