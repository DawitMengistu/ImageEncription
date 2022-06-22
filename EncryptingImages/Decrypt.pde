class Decrypt {

  void onDraw() {
   
    if (path2!=null) {
      //if (path2.endsWith(".png") || path2.endsWith(".jpg")) { 
        println("got here");
        img2 = loadImage(path2);
        W2 = img2.width;
        H2 = img2.height;
        if (W2>5000 || H2>5000){
          path2=null;
          isbig=true;
          page = 2;
          }
       if (!isbig){
        pg2 = createGraphics(W2, H2);
        println(img2.get(width,1));
        println(red(img2.get(2,H2-1)),green(img2.get(2,H2-1)),blue(img2.get(2,H2-1)));
        for (int x=0; x<W2; x++){
         CodesFromTheImage += str(int(red(img2.get(x,H2-1))))  + str(int(green(img2.get(x,H2-1)))) + str(int(blue(img2.get(x,H2-1))))+ "," ;
        }
        String[] nums = split( CodesFromTheImage , ",");
        saveStrings("CodeNumbers.txt" , nums);
        String[] nums2 =  loadStrings("CodeNumbers.txt");
        
          for (int y=0; y<nums2.length; y++){
            for (int x=0; x<Code.length-1; x++){
            if (int (nums2[y]) == int(Code[x])){
            Check += str(x) + ",";
            }
          
          }
          
        }
        String [] Final = split(Check , ",");
        saveStrings("final.txt" , Final);
        String[] numbers2= loadStrings("final.txt");
        //loadPixels();
        img2.loadPixels();
        pg2.beginDraw();
        for (int x=0; x<W2; x++) {
          for (int y=0; y<H2; y++) {
            float r = red(img2.get(x, y));
            float g = green(img2.get(x, y));
            float b = blue(img2.get(x, y));
            pg2.set(int(numbers2[x]), y, color(r, g, b));
          }
        }
        pg2.endDraw(); 
        pg2.save ("decrypted" + millis() + ".png" );
        println("done");
        path2 = null;
        oneTimeFileOpen2=-1;
      //} else {
      //  oneTimeFileOpen2=0;
      //  data  = null;
      //  path2 = null;
        
      //}
      }
    }
  }
}
