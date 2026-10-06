void setup()
  {
    size(480,480);
    noLoop();
  }
  void draw()
  {
     background(0);
     int sum=0;
     for( int a = 15; a <500; a += 60){
      for( int b = 20; b < 400 ; b += 60){
        Die bob = new Die (a,b);
        bob.show();
        sum = sum + bob.dots;
      }
    }
      fill(255,255,255);
      textSize(25);
      text("T o t a l : " + sum,175,450); 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int x;
      int y;
      int dots;
      int dieSize;
      
      Die(int x, int y) //constructor
      {
          dots=(int)(Math.random()*6)+1;
          this.x=x;
          this.y=y;
          dieSize=30;
      }
      void roll()
      {
         dots=(int)(Math.random()*6)+1;
      }
      void show()
      {
        fill(255,255,255);
        rect(x,y,dieSize,dieSize);
        if (dots == 6){
          ellipse(x+10,y+7,2,2);
          ellipse(x+10,y+15,2,2);
          ellipse(x+10,y+23,2,2);
          ellipse(x+20,y+7,2,2);
          ellipse(x+20,y+15,2,2);
          ellipse(x+20,y+23,2,2);
        } else if (dots == 5){
          ellipse(x+10,y+7,2,2);
          ellipse(x+10,y+15,2,2);
          ellipse(x+10,y+23,2,2);
          ellipse(x+20,y+7,2,2);
          ellipse(x+20,y+15,2,2);
        } else if (dots == 4){
          ellipse(x+10,y+10,2,2);
          ellipse(x+10,y+20,2,2);
          ellipse(x+20,y+10,2,2);
          ellipse(x+20,y+20,2,2);
        } else if (dots == 3){
          ellipse(x+10,y+10,2,2);
          ellipse(x+10,y+20,2,2);
          ellipse(x+20,y+10,2,2);
        } else if (dots == 2){
          ellipse(x+10,y+15,2,2);
          ellipse(x+20,y+15,2,2);
        } else if (dots == 1){
          ellipse(x+15,y+15,2,2);
        }

       
    }
    
    
  }
      
  
