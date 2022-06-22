class Encrypt {

  void onDraw() {
    if (path!=null)
      if (path.endsWith(".png") || path.endsWith("jpg")  || path.endsWith(".tff") || path.endsWith(".PNG") || path.endsWith(".JPG")) {
        if (oneTimeEncrypt==0 && path!=null) {
          if (path!=null) {
            img = loadImage(path);
            W = img.width;
            H = img.height;
            if (W>5000 || H>5000) {
              s=1;
              path=null;
              page=3;
            } else {
              s=2;
            }
          }
          if (s==2) {
            if (W<=255) {
              H+=1;
            } else {
            }
            pg = createGraphics(W, H+R);
            int[] numbers = new int [W];
            int rm = int(random(W));
            for (int ii=0; ii<W; ii++) {
              numbers[ii] = -1;
            }

            while (a<W) {
              for (int x=0; x<W; x++) {
                if (numbers[x]!=rm) {
                  i+=1;
                  if (i==W) {
                    numbers[a]= rm;
                    i=0;
                    a+=1;
                  }
                } else {
                  rm = int(random(W));
                  i=0;
                }
              }
            }

            //printArray(numbers);
            pg.beginDraw();
            //pg.background(0);
            //pg.stroke(0);
            //pg.line(pg.width*0.5, pg.height*0.5, 100, 100);
            //loadPixels();
            img.loadPixels();
            for (int x=0; x<W; x++) {
              for (int y=0; y<H-R; y++) {
                float r = red(img.get(numbers[x], y));
                float g = green(img.get(numbers[x], y));
                float b = blue(img.get(numbers[x], y));
                pg.set(x, y, color(r, g, b));
              }
            }
            //for (int x=0; x<pg.width; x++) {
            //   pg.set(x,height,color(numbers[x],numbers[x],numbers[x]));
            // }
            for (int y=H; y<H+R; y++)
              for (int x=0; x<W; x++) {
                String W = Code2[numbers[x]];
                int[] L = int(split(W, "-"));
                //   pg.set(x,H+1,color(L[0],L[1],L[2]));
                pg.set(x, y, color(L[0], L[1], L[2]));
              }
            pg.endDraw(); 
            pg.save ("N" + millis() + ".png");
            saveStrings("data.txt", str(numbers));
            //saveFrame("encrypted.png");
            println("done");
            //createOutput("N.png");
            oneTimeEncrypt=1;
            oneTimeFileOpen=2;
            path = null;
          }
        }
      } else {
      page =1;
      println("Only Images");
      path=null;
      oneTimeEncrypt=1;
      oneTimeFileOpen=2;
    }
  }
}
