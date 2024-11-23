class Light_2 {
  int x, y;  
  int[] durations;  
  int currentLight = 2;  
  int currentDuration;  
  
  Light_2(int x, int y, int[] durations) {
    this.x = x;
    this.y = y;
    this.durations = durations;
    this.currentDuration = durations[0];
  }
  
  void update() {
 if (currentDuration <= 0) {
    if (currentLight == 2) {
      currentLight = 1;
    } else if (currentLight == 1) {
      currentLight = 0;
    } else {
      currentLight = 2;
    }
    currentDuration = durations[currentLight];
  }

  stroke(0);
  fill(100);
  rect(this.x + 10,this.y - 10,10,100);
  rect(this.x,this.y, 30, 95, 20);
  stroke(0);
  fill(154,205,50);
  ellipse(this.x + 15, this.y + 15, 20, 20);
  stroke(0);
  fill(216,191,216);
  ellipse(this.x + 15, this.y + 47, 20, 20);
  stroke(0);
  fill(220,20,60);
  ellipse(this.x + 15, this.y + 80, 20, 20);
  
  if (currentLight == 2) {
    noStroke();
    fill(0, 255, 0);
    ellipse(this.x + 15, this.y + 15, 20, 20);
  } else if (currentLight == 1) {
    noStroke();
    fill(255, 255, 0);
    ellipse(this.x + 15, this.y + 48, 20, 20);
  } else {
    noStroke();
    fill(255, 0, 0);
    ellipse(this.x + 15, this.y + 80, 20, 20);
  }
  currentDuration -=  26;
  }
}
