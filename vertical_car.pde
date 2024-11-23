class Car1 extends Light {
    int x, y; 
    float speed; 
    color c; 
    
    Car1(int x, int y, float speed, color c, int[] durations) {
      super(x,y,durations);
      this.x = x;
      this.y = y;
      this.speed = speed;
      this.c = c;
    }
    
    
    void display() {
        stroke(64,224,208);
        fill(c);
        rect(x - 20, y + 20, 30, 70,20);
        fill(0);
        rect(x - 25, y + 30, 5, 10);
        fill(0);
        rect(x - 25, y + 70, 5, 10);
        fill(0);
        rect(x + 10, y + 70, 5, 10);
        fill(0);
        rect(x + 10, y + 30, 5, 10);
        fill(255,228,196);
        rect(x - 20, y + 52, 30, 5);
    }
  }
