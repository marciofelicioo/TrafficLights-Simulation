class Background {
  color rectangle;
  
  Background(color rectangle_color) {
    this.rectangle = rectangle_color;
  }
  void draw() {
    background(188,143,143);
    for (int x = 0; x <= 2000; x += 80) {
    for (int y = 0; y <= 500; y += 50) {
      fill(139, 69, 19); 
      rect(x, y, 10, 40); 
      fill(34, 139, 34); 
      ellipse(x + 5, y - 20, 60, 60); 
      ellipse(x - 5, y - 20, 60, 60); 
      ellipse(x, y - 35, 60, 60); 
    }
  }

    fill(rectangle);
    stroke(0);
    rect(0,220,800,100);
    rect(0,10,800,100);
    noStroke();
    rect(150,0,100,800);
    rect(550,0,100,800);
    for(int i = 0; i <= 60; i++)
    {
      fill(255,255,255);
      rect(i * 35,270,20,5);
      rect(i * 35,55,20,5);
      rect(600,i * 35,5,20);
      rect(200,i * 35,5,20);
    }
  }
}
