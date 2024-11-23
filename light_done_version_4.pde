class Light {
  int x, y;  
  int[] durations;  
  int currentLight = 0;  
  int currentDuration;  
  
  Light(int x, int y, int[] durations) {
    this.x = x;
    this.y = y;
    this.durations = durations;
    this.currentLight = 0;
    this.currentDuration = durations[0];
  }
  
  void update_() {
  if (currentDuration <= 0) {
    if (currentLight == 0) {
      currentLight = 1;
    } else if (currentLight == 1) {
      currentLight = 2;
    } else {
      currentLight = 0;
    }
    currentDuration = durations[currentLight];
  }

  stroke(0);
  fill(100);
  rect(this.x + 15,this.y + 10,100,10);
  rect(this.x,this.y, 95, 30, 20);
  stroke(0);
  fill(154,205,50);
  ellipse(this.x + 80, this.y + 15, 20, 20);
  stroke(0);
  fill(216,191,216);
  ellipse(this.x + 47, this.y + 15, 20, 20);
  stroke(0);
  fill(220,20,60);
  ellipse(this.x + 15, this.y + 15, 20, 20);
  
  if (currentLight == 0) {
    noStroke();
    fill(0, 255, 0);
    ellipse(this.x + 80, this.y + 15, 20, 20);
  } else if (currentLight == 1) {
    noStroke();
    fill(255, 255, 0);
    ellipse(this.x + 47, this.y + 15, 20, 20);
  } else {
    noStroke();
    fill(255, 0, 0);
    ellipse(this.x + 15, this.y + 15, 20, 20);
  }
  
  currentDuration -=  26;
  println("Frame rate: " + frameRate);
  }
}





     
