  class Car extends Light {
    int x, y; 
    float speed; 
    color c; 
    
    Car(int x, int y, float speed, color c, int[] durations) {
      super(x,y,durations);
      this.x = x;
      this.y = y;
      this.speed = speed;
      this.c = c;
    }
    
    
    void display() {
        stroke(64,224,208);
        fill(c);
        rect(x - 10, y + 50, 70, 30,20);
        fill(0);
        rect(x, y + 45, 10, 5);
        fill(0);
        rect(x + 40, y + 45, 10, 5);
        fill(0);
        rect(x, y + 80, 10, 5);
        fill(0);
        rect(x + 40, y + 80, 10, 5);
        fill(255,228,196);
        rect(x + 22, y + 50, 5, 30);
    }
  }


  
