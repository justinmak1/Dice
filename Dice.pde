void setup()
  {
    size(500,500);
      noLoop();
  }
  void draw()
  {
      //your code here
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
      
      Die(int x, int y) //constructor
      {
          this.x=x;
          this.y=y;
          dots=1;
      }
      void roll()
      {
         dots=(int)(Math.random()*6)+1;
      }
      void show()
      {
          rect(x,y,100,100);
          
      }
  }
